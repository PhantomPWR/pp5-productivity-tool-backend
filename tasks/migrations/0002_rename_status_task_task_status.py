# Generated by Django 3.2.19 on 2023-06-14 17:43

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='task',
            old_name='status',
            new_name='task_status',
        ),
    ]