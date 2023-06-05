# Generated by Django 3.2.19 on 2023-06-05 17:29

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('tasks', '0023_task_owner_comments'),
    ]

    operations = [
        migrations.CreateModel(
            name='Watcher',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('owner', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='watching', to=settings.AUTH_USER_MODEL)),
                ('watched', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='watched', to='tasks.task')),
            ],
            options={
                'unique_together': {('owner', 'watched')},
            },
        ),
    ]
