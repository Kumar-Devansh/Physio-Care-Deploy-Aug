from django.db import migrations


EXERCISES = [
    ("Shoulder Pendulum", "Shoulder mobility", "Lean forward with your unaffected arm supported and let the affected arm swing gently.", 5, "easy"),
    ("Heel Slides", "Knee mobility", "Lie on your back and slowly slide your heel toward you, staying in a comfortable range.", 6, "easy"),
    ("Quadriceps Sets", "Knee strength", "Tighten the muscles at the front of your thigh while keeping the knee straight.", 5, "easy"),
    ("Straight Leg Raise", "Hip and knee strength", "Tighten the thigh, keep the knee straight, and lift the leg slowly.", 7, "moderate"),
    ("Ankle Pumps", "Ankle circulation", "Gently point and flex your feet to encourage ankle movement and circulation.", 4, "easy"),
    ("Neck Stretch", "Neck mobility", "Ease your ear toward your shoulder without lifting the shoulder or forcing the stretch.", 4, "easy"),
    ("Hamstring Stretch", "Leg flexibility", "Keep your back tall and extend one leg until a gentle stretch is felt behind the thigh.", 6, "easy"),
    ("Wall Slides", "Shoulder mobility", "Slide your arms up a wall slowly while keeping the movement comfortable and controlled.", 6, "moderate"),
    ("Bridge Exercise", "Core strength", "Press through both feet and lift your hips while keeping your ribs relaxed.", 8, "moderate"),
    ("Cat-Cow Stretch", "Spinal mobility", "Move slowly between a rounded and gently arched back while breathing steadily.", 6, "easy"),
]


def seed_exercises(apps, schema_editor):
    Exercise = apps.get_model("core", "Exercise")
    for title, category, description, duration_minutes, difficulty in EXERCISES:
        Exercise.objects.get_or_create(
            title=title,
            defaults={
                "category": category,
                "description": description,
                "duration_minutes": duration_minutes,
                "difficulty": difficulty,
            },
        )


class Migration(migrations.Migration):
    dependencies = [("core", "0009_update_video_announcement")]

    operations = [migrations.RunPython(seed_exercises, migrations.RunPython.noop)]
