# Generated by Django 3.2.19 on 2023-06-24 15:04

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0015_auto_20230624_1502'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='related_tasks',
            field=models.ManyToManyField(blank=True, related_name='categories', to='tasks.Task'),
        ),
        migrations.AlterField(
            model_name='task',
            name='category',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='tasks.category'),
        ),
    ]
