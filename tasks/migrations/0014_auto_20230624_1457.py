# Generated by Django 3.2.19 on 2023-06-24 14:57

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0013_alter_category_related_tasks'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='related_tasks',
            field=models.ManyToManyField(blank=True, default=1, related_name='categories', to='tasks.Task'),
        ),
        migrations.AlterField(
            model_name='task',
            name='category',
            field=models.ForeignKey(blank=True, default=1, null=True, on_delete=django.db.models.deletion.SET_DEFAULT, to='tasks.category'),
        ),
    ]
