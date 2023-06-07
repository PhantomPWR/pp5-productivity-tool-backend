# Generated by Django 3.2.19 on 2023-06-06 15:13

from django.conf import settings
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('tasks', '0024_task_watchers'),
        ('watchers', '0003_auto_20230606_1457'),
    ]

    operations = [
        migrations.RenameField(
            model_name='watcher',
            old_name='user_watching',
            new_name='owner',
        ),
        migrations.AlterUniqueTogether(
            name='watcher',
            unique_together={('owner', 'task_watched')},
        ),
    ]