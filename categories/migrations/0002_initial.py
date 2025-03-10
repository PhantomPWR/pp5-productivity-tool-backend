# Generated by Django 5.1.7 on 2025-03-10 16:32

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ("categories", "0001_initial"),
        ("tasks", "0001_initial"),
    ]

    operations = [
        migrations.AddField(
            model_name="category",
            name="related_tasks",
            field=models.ManyToManyField(
                blank=True, related_name="task", to="tasks.task"
            ),
        ),
    ]
