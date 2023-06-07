# Generated by Django 3.2.19 on 2023-06-04 11:26

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0020_alter_task_created_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='task',
            name='created_date',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]