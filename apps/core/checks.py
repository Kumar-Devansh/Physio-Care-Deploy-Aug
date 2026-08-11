from email.utils import parseaddr
from urllib.parse import urlparse

from django.conf import settings
from django.core.checks import Error, Tags, Warning, register

import base64


PLACEHOLDER_PARTS = ("example.com", "your-", "replace-")


def _is_placeholder(value):
    value = (value or "").strip().lower()
    return not value or any(part in value for part in PLACEHOLDER_PARTS)


@register(Tags.security)
def email_configuration_check(app_configs, **kwargs):
    if not settings.EMAIL_ENABLED:
        return []
    if settings.EMAIL_BACKEND != "django.core.mail.backends.smtp.EmailBackend":
        return []

    missing = []
    if _is_placeholder(settings.EMAIL_HOST):
        missing.append("EMAIL_HOST")
    if _is_placeholder(settings.EMAIL_HOST_USER):
        missing.append("EMAIL_HOST_USER")
    if _is_placeholder(settings.EMAIL_HOST_PASSWORD):
        missing.append("EMAIL_HOST_PASSWORD")
    if missing:
        return [
            Error(
                "Email is enabled but SMTP still contains missing or placeholder values.",
                hint=f"Set real values for {', '.join(missing)} in .env, or keep EMAIL_ENABLED=0.",
                id="core.E001",
            )
        ]
    warnings = []
    site_url = urlparse(settings.SITE_URL)
    if site_url.scheme != "https" or not site_url.hostname:
        warnings.append(
            Warning(
                "Email links do not use a public HTTPS URL.",
                hint=(
                    "Set SITE_URL to your deployed HTTPS domain (for example, "
                    "https://physiocare.example.com). Never use localhost or a raw IP "
                    "address in production email."
                ),
                id="core.W001",
            )
        )

    if settings.EMAIL_HOST.lower() in {"smtp.gmail.com", "smtp-relay.gmail.com"}:
        warnings.append(
            Warning(
                "Gmail SMTP is configured for transactional application email.",
                hint=(
                    "Use a transactional provider with a verified clinic domain and "
                    "publish its SPF, DKIM, and DMARC DNS records. Gmail SMTP is useful "
                    "for development but commonly has poorer deliverability for app mail."
                ),
                id="core.W002",
            )
        )

    from_address = parseaddr(settings.DEFAULT_FROM_EMAIL)[1]
    if not from_address:
        warnings.append(
            Warning(
                "DEFAULT_FROM_EMAIL does not contain a valid email address.",
                hint="Use a verified mailbox such as PhysioCare <care@your-domain.com>.",
                id="core.W003",
            )
        )
    return warnings


@register(Tags.security)
def backup_encryption_check(app_configs, **kwargs):
    key = settings.BACKUP_ENCRYPTION_KEY
    if (settings.DEBUG or settings.TESTING) and not key:
        return []
    try:
        decoded = base64.urlsafe_b64decode(key.encode()) if key else b""
    except (ValueError, TypeError):
        decoded = b""
    if len(decoded) != 32:
        return [
            Error(
                "BACKUP_ENCRYPTION_KEY must be a valid URL-safe base64 encoded 32-byte key.",
                hint=(
                    'Generate one with: python -c "import base64,secrets; '
                    'print(base64.urlsafe_b64encode(secrets.token_bytes(32)).decode())"'
                ),
                id="core.E002",
            )
        ]
    return []
