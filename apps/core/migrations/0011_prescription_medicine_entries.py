from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [("core", "0010_seed_exercise_catalog")]

    operations = [
        migrations.AddField(
            model_name="prescription",
            name="medicine_entries",
            field=models.JSONField(blank=True, default=list),
        ),
    ]
