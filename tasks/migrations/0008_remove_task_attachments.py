# Generated by Django 3.2.19 on 2023-06-17 07:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0007_alter_task_attachments'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='task',
            name='attachments',
        ),
    ]