# Generated by Django 3.2.19 on 2023-06-26 06:45

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('tasks', '0002_alter_task_assigned_to'),
    ]

    operations = [
        migrations.AlterField(
            model_name='task',
            name='assigned_to',
            field=models.ManyToManyField(blank=True, related_name='assigned_to', to=settings.AUTH_USER_MODEL),
        ),
    ]
