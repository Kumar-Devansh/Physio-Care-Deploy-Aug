# Physio-Care

A production-ready physiotherapy clinic management and patient-care web application built with **Django, PostgreSQL, Docker, Gunicorn, and Nginx**.

Physio-Care provides a centralized platform for managing patients, doctors, appointments, prescriptions, exercises, treatment plans, authentication, OTP/email workflows, and clinic operations.

---

## 📌 Table of Contents

- [Project Overview](#-project-overview)
- [Architecture](#-architecture)
- [Technology Stack](#-technology-stack)
- [Project Structure](#-project-structure)
- [Prerequisites](#-prerequisites)
- [1. Clone Repository](#1-clone-repository)
- [2. Configure Environment](#2-configure-environment)
- [3. Generate Secure Keys](#3-generate-secure-keys)
- [4. Verify Docker](#4-verify-docker)
- [5. Build Docker Images](#5-build-docker-images)
- [6. Start PostgreSQL](#6-start-postgresql)
- [7. Database Restore](#7-database-restore)
- [8. Start Application](#8-start-application)
- [9. Collect Static Files](#9-collect-static-files)
- [10. Static Files on Host](#10-static-files-on-host)
- [11. Configure Nginx](#11-configure-nginx)
- [12. Static Files Permissions](#12-static-files-permissions)
- [13. Verify Application](#13-verify-application)
- [14. Verify Docker Containers](#14-verify-docker-containers)
- [15. Check Application Logs](#15-check-application-logs)
- [16. Verify Django](#16-verify-django)
- [17. Verify CSRF](#17-verify-csrf)
- [18. Email / SMTP Configuration](#18-email--smtp-configuration)
- [19. Test Email](#19-test-email)
- [20. Correct Email Address Format](#20-correct-email-address-format)
- [21. Production HTTPS](#21-production-https)
- [22. Useful Docker Commands](#22-useful-docker-commands)
- [23. Useful Nginx Commands](#23-useful-nginx-commands)
- [24. Troubleshooting](#24-troubleshooting)
- [Database Backup & Restore](#-database-backup--restore)
- [Deployment Workflows](#-deployment-workflows)
- [Production Deployment Checklist](#-production-deployment-checklist)
- [Security Checklist](#-security-checklist)
- [AWS EC2 Configuration](#-aws-ec2-configuration)
- [Final Health Check](#-final-health-check)
- [Development Workflow](#-development-workflow)
- [License](#-license)
- [Maintainer](#-maintainer)

---

## 🚀 Project Overview

Physio-Care is a Django-based physiotherapy clinic management platform.

The application is designed to support:

- Patient registration and authentication
- OTP-based authentication / email workflows
- Doctor login
- Patient management
- Doctor management
- Appointment management
- Prescriptions
- Medicines
- Exercise assignments
- Treatment plans
- Diagnosis information
- Patient dashboard
- Doctor dashboard
- Staff / superuser functionality
- Email notifications
- Appointment reminders
- PostgreSQL persistence
- Production deployment through Docker
- Gunicorn application serving
- Nginx reverse proxy
- Static and media file serving

---

## 🏗 Architecture

```text
                        INTERNET
                           |
                           v
                    Public EC2 IP
                           |
                           v
                  +----------------+
                  |     NGINX      |
                  |   Port 80/443  |
                  +----------------+
                     |          |
             /static/|          | /
             /media/ |          |
                     |          v
                     |   +----------------+
                     |   |    Gunicorn    |
                     |   |   Port 8000    |
                     |   +----------------+
                     |          |
                     |          v
                     |   +----------------+
                     |   | Django / Web   |
                     |   | Docker Service |
                     |   +----------------+
                     |          |
                     |          v
                     |   +----------------+
                     |   |  PostgreSQL 16 |
                     |   | Docker Service |
                     |   +----------------+
                     |
              Static / Media Files
```

**Production flow:**

```text
Patient
   |
   v
Nginx
   |
   v
Gunicorn
   |
   v
Django
   |
   +--------------------+
   |                    |
   v                    v
PostgreSQL          Email / SMTP
   |
   v
Patient Data / Appointments / Prescriptions / Exercises / Treatment Plans / Diagnosis
```

**Reminder workflow:**

```text
PostgreSQL → Reminder Worker → Appointment Check → Email Notification → Patient
```

---

## 🧰 Technology Stack

| Component            | Technology                     |
|-----------------------|--------------------------------|
| Backend               | Django                         |
| Programming Language  | Python 3.12                    |
| Database              | PostgreSQL 16                  |
| Containerization      | Docker                         |
| Orchestration         | Docker Compose                 |
| Application Server    | Gunicorn                       |
| Reverse Proxy         | Nginx                          |
| OS                    | Ubuntu                         |
| Web Protocol          | HTTP / HTTPS                   |
| Email                 | Gmail SMTP / SMTP Provider     |
| Static Files          | Django collectstatic + Nginx   |
| Database Backup       | PostgreSQL SQL dump            |

---

## 📁 Project Structure

```text
Physio-Care-Deploy-Aug/
│
├── apps/
│   └── core/
│
├── config/
│   ├── settings.py
│   ├── urls.py
│   ├── wsgi.py
│   └── ...
│
├── templates/
├── static/
├── staticfiles/
├── media/
├── deploy/
│
├── docker-compose.yml
├── Dockerfile
├── requirements.txt
├── manage.py
├── .env
├── .env.example
├── physiocare_backup.sql
└── README.md
```

---

## 🖥 Prerequisites

The deployment server should have:

- Ubuntu
- Docker
- Docker Compose
- Git
- Nginx
- Internet access

Check installed versions:

```bash
docker --version
docker compose version
git --version
nginx -v
```

If Docker is already installed, continue directly.

---

## 1. Clone Repository

```bash
git clone https://github.com/Kumar-Devansh/Physio-Care-Deploy-Aug.git
cd Physio-Care-Deploy-Aug
```

Verify:

```bash
ls -la
```

You should see files such as `docker-compose.yml`, `Dockerfile`, `manage.py`, `requirements.txt`, `config/`, `apps/`, `templates/`.

---

## 2. Configure Environment

Create the `.env` file:

```bash
vim .env
```

Example production configuration:

```env
# ============================================================
# DJANGO
# ============================================================
DJANGO_SECRET_KEY=CHANGE_THIS_TO_A_NEW_SECRET_KEY
DJANGO_DEBUG=0

DJANGO_ALLOWED_HOSTS=YOUR_EC2_PUBLIC_IP,127.0.0.1,localhost

DJANGO_CSRF_TRUSTED_ORIGINS=http://YOUR_EC2_PUBLIC_IP
DJANGO_CORS_ALLOWED_ORIGINS=

DJANGO_SECURE_SSL_REDIRECT=0
DJANGO_HSTS_SECONDS=0

# HTTP deployment only. Change to 1 after HTTPS is correctly configured.
CSRF_COOKIE_SECURE=0
SESSION_COOKIE_SECURE=0

DJANGO_LOG_LEVEL=INFO

# ============================================================
# POSTGRESQL
# ============================================================
POSTGRES_DB=physiocare
POSTGRES_USER=physiocare
POSTGRES_PASSWORD=CHANGE_THIS_DATABASE_PASSWORD

DATABASE_URL=postgresql://physiocare:CHANGE_THIS_DATABASE_PASSWORD@db:5432/physiocare?sslmode=disable

POSTGRES_CONNECT_TIMEOUT=10
POSTGRES_CONN_MAX_AGE=60

# ============================================================
# WEBSITE
# ============================================================
SITE_URL=http://YOUR_EC2_PUBLIC_IP
CLOUDINARY_URL=
MAX_PRIVATE_UPLOAD_MB=10

# ============================================================
# BACKUP ENCRYPTION
# ============================================================
BACKUP_ENCRYPTION_KEY=GENERATE_A_NEW_KEY

# ============================================================
# EMAIL / SMTP
# ============================================================
EMAIL_ENABLED=1
EMAIL_BACKEND=django.core.mail.backends.smtp.EmailBackend

EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587

EMAIL_USE_TLS=1
EMAIL_USE_SSL=0

EMAIL_HOST_USER=YOUR_GMAIL_ADDRESS

# Gmail App Password. DO NOT use the normal Gmail account password.
EMAIL_HOST_PASSWORD=YOUR_16_CHARACTER_GMAIL_APP_PASSWORD

EMAIL_TIMEOUT=15
EMAIL_MAX_ATTEMPTS=5

DEFAULT_FROM_EMAIL=PhysioCare <YOUR_GMAIL_ADDRESS>
SERVER_EMAIL=PhysioCare <YOUR_GMAIL_ADDRESS>

CONTACT_EMAIL=YOUR_GMAIL_ADDRESS
EMAIL_REPLY_TO=YOUR_GMAIL_ADDRESS

# ============================================================
# OTP
# ============================================================
OTP_EXPIRY_MINUTES=10
OTP_RESEND_SECONDS=60
OTP_MAX_ATTEMPTS=5

# ============================================================
# APPOINTMENT REMINDER WORKER
# ============================================================
REMINDER_POLL_SECONDS=60

# ============================================================
# GUNICORN
# ============================================================
PORT=8000
```

---

## 3. Generate Secure Keys

**Django Secret Key**

```bash
python3 -c "import secrets; print(secrets.token_urlsafe(64))"
```

Copy the generated value into `DJANGO_SECRET_KEY=...`

**Backup Encryption Key**

```bash
python3 -c "import base64,secrets; print(base64.urlsafe_b64encode(secrets.token_bytes(32)).decode())"
```

Copy it into `BACKUP_ENCRYPTION_KEY=...`

> ⚠️ Never commit `.env` to Git.

Verify:

```bash
git status
```

Make sure `.gitignore` contains:

```text
.env
*.sql
*.sql.gz
```

---

## 4. Verify Docker

```bash
docker --version
docker compose version
docker compose config
```

If the configuration is valid, Docker Compose prints the resolved configuration without an error.

---

## 5. Build Docker Images

```bash
docker compose build
```

If dependencies or the Dockerfile changed:

```bash
docker compose build --no-cache
```

---

## 6. Start PostgreSQL

Start only the database first:

```bash
docker compose up -d db
docker compose ps
```

The database should eventually show `Up ... (healthy)`.

---

## 7. Database Restore

If a PostgreSQL backup is available (`physiocare_backup.sql`):

```bash
ls -lh physiocare_backup.sql

docker compose exec -T db \
  psql -v ON_ERROR_STOP=1 \
  -U physiocare \
  -d physiocare \
  < physiocare_backup.sql
```

> ✅ Always use `-v ON_ERROR_STOP=1` — this stops the restore immediately if an error occurs.

Verify tables, schemas, and users:

```bash
docker compose exec db psql -U physiocare -d physiocare -c "\dt"
docker compose exec db psql -U physiocare -d physiocare -c "\dn"
docker compose exec db psql -U physiocare -d physiocare -c "SELECT username, is_superuser, is_staff FROM auth_user;"
```

---

## 8. Start Application

```bash
docker compose up -d
docker compose ps
```

Expected services: `db`, `web`, `reminders` — all running.

---

## 9. Collect Static Files

```bash
docker compose exec web python manage.py collectstatic --noinput
```

Verify:

```bash
docker compose exec web python manage.py shell -c \
"from django.conf import settings; print(settings.STATIC_URL); print(settings.STATIC_ROOT)"
```

Expected output:

```text
/static/
/srv/physiocare/staticfiles
```

---

## 10. Static Files on Host

If Nginx serves static files directly from `/home/ubuntu/Physio-Care-Deploy-Aug/staticfiles/`, ensure the directory exists:

```bash
mkdir -p staticfiles
find staticfiles -type f | head -20
find staticfiles -type f | wc -l
find staticfiles -type f -name "*.css" | head -10
```

---

## 11. Configure Nginx

Install Nginx:

```bash
sudo apt update
sudo apt install nginx -y
sudo systemctl status nginx
```

Create the site configuration:

```bash
sudo vim /etc/nginx/sites-available/physiocare
```

```nginx
server {
    listen 80;
    listen [::]:80;

    server_name YOUR_EC2_PUBLIC_IP;

    client_max_body_size 20M;

    location /static/ {
        alias /home/ubuntu/Physio-Care-Deploy-Aug/staticfiles/;
    }

    location /media/ {
        alias /home/ubuntu/Physio-Care-Deploy-Aug/media/;
    }

    location / {
        proxy_pass http://127.0.0.1:8000;

        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;

        proxy_connect_timeout 60s;
        proxy_send_timeout 60s;
        proxy_read_timeout 60s;
    }
}
```

Replace `YOUR_EC2_PUBLIC_IP` with your actual EC2 public IP or domain, then enable the site:

```bash
sudo ln -s /etc/nginx/sites-available/physiocare /etc/nginx/sites-enabled/physiocare
sudo rm -f /etc/nginx/sites-enabled/default

sudo nginx -t
sudo systemctl reload nginx
```

---

## 12. Static Files Permissions

A common deployment issue is Nginx returning `403 Forbidden` for static files, because Nginx runs as `www-data` while the application directory belongs to `ubuntu`, and Docker-created static files can have different ownership.

Diagnose:

```bash
namei -l /home/ubuntu/Physio-Care-Deploy-Aug/staticfiles/admin/css/responsive.css
ls -ld /home/ubuntu
ls -ld /home/ubuntu/Physio-Care-Deploy-Aug
ls -ld /home/ubuntu/Physio-Care-Deploy-Aug/staticfiles
```

If Nginx cannot traverse the directories, install and apply ACLs:

```bash
sudo apt install acl -y

sudo setfacl -m u:www-data:--x /home/ubuntu
sudo setfacl -m u:www-data:--x /home/ubuntu/Physio-Care-Deploy-Aug
sudo setfacl -R -m u:www-data:rX /home/ubuntu/Physio-Care-Deploy-Aug/staticfiles
```

Test:

```bash
curl -I http://127.0.0.1/static/admin/css/responsive.css
```

Expected: `HTTP/1.1 200 OK`

---

## 13. Verify Application

```bash
curl -4 ifconfig.me                     # Get EC2 public IP
curl -I http://127.0.0.1:8000           # Test Gunicorn directly
curl -I http://127.0.0.1               # Test Nginx
curl -I http://YOUR_EC2_PUBLIC_IP      # Test public IP
```

A `200`, `301`, `302`, or application-specific response confirms the service is reachable. Then open `http://YOUR_EC2_PUBLIC_IP` in a browser.

---

## 14. Verify Docker Containers

```bash
docker compose ps
docker compose ps -a

docker inspect physio-care-deploy-aug-web-1 \
  --format='Status={{.State.Status}} RestartCount={{.RestartCount}} ExitCode={{.State.ExitCode}} Error={{.State.Error}}'
```

---

## 15. Check Application Logs

```bash
docker compose logs web --tail=200
docker compose logs reminders --tail=100
docker compose logs db --tail=100
docker compose logs -f web        # follow logs live
```

---

## 16. Verify Django

```bash
docker compose exec web python manage.py migrate
docker compose exec web python manage.py check
```

If production warnings appear, inspect them carefully before ignoring them.

---

## 17. Verify CSRF

For HTTP deployment:

```env
DJANGO_SECURE_SSL_REDIRECT=0
CSRF_COOKIE_SECURE=0
SESSION_COOKIE_SECURE=0
DJANGO_CSRF_TRUSTED_ORIGINS=http://YOUR_EC2_PUBLIC_IP
```

Restart the web container after any `.env` change:

```bash
docker compose up -d --force-recreate web
```

Verify environment variables and Django settings:

```bash
docker compose exec web env | grep -E 'CSRF|SESSION|DJANGO_SECURE'

docker compose exec web python manage.py shell -c "
from django.conf import settings
print('CSRF_TRUSTED_ORIGINS=', settings.CSRF_TRUSTED_ORIGINS)
print('CSRF_COOKIE_SECURE=', settings.CSRF_COOKIE_SECURE)
print('CSRF_COOKIE_HTTPONLY=', settings.CSRF_COOKIE_HTTPONLY)
print('CSRF_COOKIE_SAMESITE=', settings.CSRF_COOKIE_SAMESITE)
print('SESSION_COOKIE_SECURE=', settings.SESSION_COOKIE_SECURE)
"
```

Test the login page:

```bash
curl -i http://127.0.0.1/login/ | grep -iE "set-cookie|csrf"
```

The response should include `Set-Cookie: csrftoken=...` and a Django CSRF token inside the form.

---

## 18. Email / SMTP Configuration

Physio-Care can use Gmail SMTP:

```env
EMAIL_ENABLED=1
EMAIL_BACKEND=django.core.mail.backends.smtp.EmailBackend

EMAIL_HOST=smtp.gmail.com
EMAIL_PORT=587

EMAIL_USE_TLS=1
EMAIL_USE_SSL=0

EMAIL_HOST_USER=YOUR_GMAIL_ADDRESS
EMAIL_HOST_PASSWORD=YOUR_GMAIL_APP_PASSWORD

DEFAULT_FROM_EMAIL=PhysioCare <YOUR_GMAIL_ADDRESS>
SERVER_EMAIL=PhysioCare <YOUR_GMAIL_ADDRESS>

CONTACT_EMAIL=YOUR_GMAIL_ADDRESS
EMAIL_REPLY_TO=YOUR_GMAIL_ADDRESS
```

> ⚠️ **Important:** Do NOT use your normal Gmail account password — use a **Google App Password** (16 characters). The Gmail account must have the required security setup for App Passwords enabled.

---

## 19. Test Email

Restart the application after changing `.env`:

```bash
docker compose up -d --force-recreate web
docker compose exec web env | grep '^EMAIL_'
```

Check settings safely (never print the raw password):

```bash
docker compose exec web python manage.py shell -c "
from django.conf import settings
print('EMAIL_HOST:', settings.EMAIL_HOST)
print('EMAIL_PORT:', settings.EMAIL_PORT)
print('EMAIL_HOST_USER:', settings.EMAIL_HOST_USER)
print('EMAIL_USE_TLS:', settings.EMAIL_USE_TLS)
print('EMAIL_USE_SSL:', settings.EMAIL_USE_SSL)
print('PASSWORD_LENGTH:', len(settings.EMAIL_HOST_PASSWORD))
"
```

Send a test email:

```bash
docker compose exec web python manage.py shell
```

```python
from django.core.mail import send_mail
from django.conf import settings

send_mail(
    "PhysioCare SMTP Test",
    "Testing email from EC2.",
    settings.DEFAULT_FROM_EMAIL,
    ["YOUR_TEST_EMAIL@gmail.com"],
    fail_silently=False,
)
```

Expected return value: `1`

If you receive `SMTPAuthenticationError: (535, ...) Username and Password not accepted`, check:

- Gmail address is correct
- App Password is correct and has no accidental spaces
- The normal Gmail password is **not** being used
- The App Password belongs to the same Gmail account as `EMAIL_HOST_USER`
- `.env` was actually loaded into the container
- The container was recreated after changing `.env`

After fixing, recreate the container and test again:

```bash
docker compose up -d --force-recreate web
```

---

## 20. Correct Email Address Format

✅ Correct:

```env
DEFAULT_FROM_EMAIL=PhysioCare <dev@example.com>
SERVER_EMAIL=PhysioCare <dev@example.com>
CONTACT_EMAIL=dev@example.com
EMAIL_REPLY_TO=dev@example.com
```

❌ Incorrect:

```env
DEFAULT_FROM_EMAIL=PhysioCare dev@example.com
```

The display name and email address must use valid email formatting.

---

## 21. Production HTTPS

HTTP is acceptable for initial EC2 testing, but production should use HTTPS. Once a domain is configured:

```env
SITE_URL=https://your-domain.com

DJANGO_ALLOWED_HOSTS=your-domain.com,www.your-domain.com

DJANGO_CSRF_TRUSTED_ORIGINS=https://your-domain.com,https://www.your-domain.com

DJANGO_SECURE_SSL_REDIRECT=1

CSRF_COOKIE_SECURE=1
SESSION_COOKIE_SECURE=1

DJANGO_HSTS_SECONDS=31536000
```

> ⚠️ Do NOT enable secure cookies before HTTPS is working — browsers may refuse to send cookies over HTTP, and login/CSRF can fail.

After HTTPS is working:

```bash
docker compose up -d --force-recreate web
sudo nginx -t
sudo systemctl reload nginx
```

---

## 22. Useful Docker Commands

```bash
docker compose up -d                              # Start
docker compose down                               # Stop
docker compose restart                             # Restart all
docker compose restart web                         # Restart web only
docker compose up -d --force-recreate web           # Recreate web
docker compose up -d --force-recreate web reminders # Recreate web + reminders
docker compose build                                # Build
docker compose build --no-cache                     # Build without cache
docker compose ps                                   # Status
docker compose ps -a                                 # All containers
docker compose logs web --tail=200                   # Logs
docker compose exec web sh                           # Shell inside web
docker compose exec web python manage.py shell        # Django shell
docker compose exec web python manage.py <command>    # Run Django command
```

---

## 23. Useful Nginx Commands

```bash
sudo systemctl status nginx
sudo nginx -t
sudo systemctl reload nginx
sudo systemctl restart nginx
sudo nginx -T
sudo nginx -T | grep -A5 -B2 "location /static/"
```

---

## 24. Troubleshooting

### Container keeps restarting

```bash
docker compose ps -a
docker compose logs web --tail=300
docker compose logs reminders --tail=200

docker inspect physio-care-deploy-aug-web-1 \
  --format='Status={{.State.Status}} RestartCount={{.RestartCount}} ExitCode={{.State.ExitCode}} Error={{.State.Error}}'
```

### 502 Bad Gateway

```bash
docker compose ps
curl -I http://127.0.0.1:8000
docker compose logs web --tail=200
```

Confirm Gunicorn is listening on `0.0.0.0:8000` (expected log: `Listening at: http://0.0.0.0:8000`), then check Nginx with `sudo nginx -t`.

### HTML loads but CSS does not

```bash
docker compose exec web python manage.py collectstatic --noinput
find staticfiles -type f -name "*.css" | head

docker compose exec web python manage.py shell -c "
from django.conf import settings
print('STATIC_URL =', settings.STATIC_URL)
print('STATIC_ROOT =', settings.STATIC_ROOT)
"

sudo nginx -T | grep -A5 -B2 "location /static/"
curl -I http://127.0.0.1/static/admin/css/responsive.css
```

If you get `403 Forbidden`, check permissions and reapply ACLs as described in [Section 12](#12-static-files-permissions).

### Login gives CSRF 403

```bash
docker compose logs web --tail=100
```

If you see `Forbidden (CSRF cookie not set.)`:

```bash
docker compose exec web env | grep -E 'CSRF|SESSION|DJANGO_SECURE'
```

Ensure for HTTP:

```env
DJANGO_SECURE_SSL_REDIRECT=0
CSRF_COOKIE_SECURE=0
SESSION_COOKIE_SECURE=0
DJANGO_CSRF_TRUSTED_ORIGINS=http://YOUR_EC2_PUBLIC_IP
```

```bash
docker compose up -d --force-recreate web
curl -i http://127.0.0.1/login/ | grep -i "set-cookie"
```

### SMTP 535 Authentication Error

```bash
docker compose exec web env | grep '^EMAIL_'

docker compose exec web python manage.py shell -c "
from django.conf import settings
print(settings.EMAIL_HOST)
print(settings.EMAIL_PORT)
print(settings.EMAIL_HOST_USER)
print(len(settings.EMAIL_HOST_PASSWORD))
"
```

Never print the actual password. Recreate the container and retry; if it still fails, generate a new Gmail App Password, update `EMAIL_HOST_PASSWORD`, and recreate the container again.

### Database restore appears empty

```bash
docker compose exec db psql -U physiocare -d physiocare -c "\dt"
docker compose exec db psql -U physiocare -d physiocare -c "\dn"
docker compose exec db psql -U physiocare -d physiocare -c "SELECT username, is_superuser, is_staff FROM auth_user;"
```

If the backup is not loaded, restore again (see [Section 7](#7-database-restore)).

### Database container unhealthy

```bash
docker compose ps
docker compose logs db --tail=200
docker compose exec db pg_isready -U physiocare -d physiocare
```

---

## 💾 Database Backup & Restore

**Create a backup:**

```bash
docker compose exec -T db pg_dump -U physiocare -d physiocare \
  > physiocare_backup_$(date +%Y%m%d_%H%M%S).sql

ls -lh physiocare_backup_*.sql
```

**Create a compressed backup:**

```bash
docker compose exec -T db pg_dump -U physiocare -d physiocare \
  | gzip > physiocare_backup_$(date +%Y%m%d_%H%M%S).sql.gz
```

**Restore a compressed backup:**

```bash
gunzip -c physiocare_backup_YYYYMMDD_HHMMSS.sql.gz \
  | docker compose exec -T db psql -v ON_ERROR_STOP=1 -U physiocare -d physiocare
```

---

## 🔁 Deployment Workflows

### Update Workflow (existing deployment)

```bash
cd ~/Physio-Care-Deploy-Aug

git pull
docker compose build
docker compose up -d

docker compose exec web python manage.py migrate
docker compose exec web python manage.py collectstatic --noinput

docker compose up -d --force-recreate web reminders

docker compose ps
docker compose logs web --tail=100

curl -I http://127.0.0.1:8000

sudo nginx -t
sudo systemctl reload nginx
```

### Clean Deployment Sequence (fresh install)

```bash
git clone https://github.com/Kumar-Devansh/Physio-Care-Deploy-Aug.git
cd Physio-Care-Deploy-Aug

vim .env

docker compose config
docker compose build
docker compose up -d db
docker compose ps

docker compose exec -T db \
  psql -v ON_ERROR_STOP=1 -U physiocare -d physiocare \
  < physiocare_backup.sql

docker compose exec db psql -U physiocare -d physiocare -c "\dt"

docker compose up -d
docker compose ps

docker compose exec web python manage.py migrate
docker compose exec web python manage.py collectstatic --noinput
docker compose exec web python manage.py check

curl -I http://127.0.0.1:8000

docker compose logs web --tail=100
docker compose logs reminders --tail=100
```

Then configure Nginx and test the public URL.

---

## ✅ Production Deployment Checklist

- [ ] EC2 instance is running
- [ ] Docker installed
- [ ] Docker Compose installed
- [ ] Repository cloned
- [ ] `.env` created
- [ ] `DJANGO_SECRET_KEY` configured
- [ ] `DJANGO_DEBUG=0`
- [ ] `ALLOWED_HOSTS` configured
- [ ] CSRF trusted origins configured
- [ ] PostgreSQL container healthy
- [ ] Database restored
- [ ] Database tables verified
- [ ] Existing users verified
- [ ] Web container running
- [ ] Reminder worker running
- [ ] Gunicorn running
- [ ] Gunicorn listening on `0.0.0.0:8000`
- [ ] Nginx installed
- [ ] Nginx configuration valid
- [ ] Nginx reverse proxy working
- [ ] Static files collected
- [ ] Static files accessible
- [ ] Nginx has permission to read static files
- [ ] Login page loads
- [ ] CSRF cookie is generated
- [ ] Login works
- [ ] OTP workflow tested
- [ ] SMTP credentials verified
- [ ] Test email received
- [ ] Appointment reminders tested
- [ ] Media uploads tested
- [ ] Database backup created
- [ ] HTTPS configured
- [ ] Secure cookies enabled after HTTPS
- [ ] Firewall / Security Group reviewed
- [ ] `.env` excluded from Git
- [ ] Database backup excluded from Git

---

## 🔐 Security Checklist

Never commit the following to version control:

- `.env`
- `*.sql`, `*.sql.gz`
- Private keys / API keys
- SMTP passwords / Gmail App Passwords
- `DATABASE_URL` credentials
- `DJANGO_SECRET_KEY`
- `BACKUP_ENCRYPTION_KEY`

Verify:

```bash
git status
git ls-files .env
```

If `.env` is tracked, remove it from Git tracking:

```bash
git rm --cached .env
```

Then commit the `.gitignore` update.

### ⚠️ Secret Rotation

If any real credential is accidentally exposed in GitHub, a README, terminal history, screenshots, chat logs, or a public repository — **rotate it immediately**:

- Django Secret Key
- PostgreSQL password
- Gmail App Password
- Backup encryption key
- Cloudinary credentials
- Any other API credentials

Never reuse exposed credentials.

---

## 🌐 AWS EC2 Configuration

The EC2 Security Group should allow at minimum:

| Protocol | Port |
|----------|------|
| SSH      | 22   |
| HTTP     | 80   |
| HTTPS    | 443  |

Port `8000` does **not** need to be publicly exposed when Nginx is used as the reverse proxy. Gunicorn should remain accessible only through `127.0.0.1:8000` or the internal Docker/network interface.

---

## 🧪 Final Health Check

```bash
echo "===== DOCKER ====="
docker compose ps

echo "===== WEB ====="
curl -I http://127.0.0.1:8000

echo "===== NGINX ====="
sudo nginx -t

echo "===== PUBLIC ====="
curl -I http://YOUR_EC2_PUBLIC_IP

echo "===== STATIC ====="
curl -I http://127.0.0.1/static/admin/css/responsive.css

echo "===== DJANGO CHECK ====="
docker compose exec web python manage.py check

echo "===== WEB LOGS ====="
docker compose logs web --tail=50

echo "===== REMINDER LOGS ====="
docker compose logs reminders --tail=50
```

A healthy deployment should show:

```text
db          Up (healthy)
web         Up
reminders   Up
```

And Nginx should report `syntax is ok` / `test is successful`.

---

## 🧑‍💻 Development Workflow

```bash
git clone https://github.com/Kumar-Devansh/Physio-Care-Deploy-Aug.git
cd Physio-Care-Deploy-Aug

vim .env

docker compose build
docker compose up -d
docker compose ps
docker compose logs -f web
```

After code changes:

```bash
git pull
docker compose build
docker compose up -d

docker compose exec web python manage.py migrate
docker compose exec web python manage.py collectstatic --noinput

docker compose up -d --force-recreate web reminders
```

---

## 🛠 Common Diagnostic Commands

```bash
docker compose ps -a                                             # All services
docker compose logs web --tail=300                                # Web logs
docker compose logs reminders --tail=200                          # Reminder logs
docker compose logs db --tail=200                                 # Database logs
curl -I http://127.0.0.1:8000                                     # Gunicorn test
curl -I http://127.0.0.1                                          # Nginx test
curl -4 ifconfig.me                                                # Public IP
curl -I http://YOUR_EC2_PUBLIC_IP                                 # Public test
curl -I http://127.0.0.1/static/admin/css/responsive.css          # Static test
docker compose exec web env | grep -E 'DJANGO|CSRF|SESSION|EMAIL|DATABASE'  # Env check
```

---

## 📌 Important Notes

**HTTP vs HTTPS** — For initial EC2 testing:

```env
DJANGO_SECURE_SSL_REDIRECT=0
CSRF_COOKIE_SECURE=0
SESSION_COOKIE_SECURE=0
```

After HTTPS is enabled:

```env
DJANGO_SECURE_SSL_REDIRECT=1
CSRF_COOKIE_SECURE=1
SESSION_COOKIE_SECURE=1
```

Never enable secure cookies while serving the application only over HTTP.

**Gmail SMTP** — Requires an App Password for password-based authentication. If the application returns `535 Username and Password not accepted`, generate a new App Password, update `EMAIL_HOST_PASSWORD`, and run `docker compose up -d --force-recreate web`.

**Static Files** — Django stores collected static files in `/srv/physiocare/staticfiles`. Nginx serves them from the host directory configured in the Docker Compose volume (`/home/ubuntu/Physio-Care-Deploy-Aug/staticfiles/`). The Docker volume mapping and Nginx alias must point to the same effective host directory.

---

## ⭐ Final Deployment Command Summary

```bash
cd ~/Physio-Care-Deploy-Aug

git pull
docker compose build
docker compose up -d

docker compose exec web python manage.py migrate
docker compose exec web python manage.py collectstatic --noinput

docker compose up -d --force-recreate web reminders

docker compose ps
docker compose logs web --tail=100
docker compose logs reminders --tail=100

curl -I http://127.0.0.1:8000

sudo nginx -t
sudo systemctl reload nginx
```

If all checks pass, open `http://YOUR_EC2_PUBLIC_IP`.

> For production, configure HTTPS and a proper domain before exposing the application to real users.

---

## 📄 License

Add the project's license information here.

## 👨‍💻 Maintainer

**Kumar Devansh**
Physio-Care — Physiotherapy Clinic Management Platform
