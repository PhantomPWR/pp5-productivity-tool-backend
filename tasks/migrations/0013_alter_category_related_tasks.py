# Generated by Django 3.2.19 on 2023-06-24 14:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0012_alter_category_related_tasks'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='related_tasks',
            field=models.ManyToManyField(blank=True, default='Uncategorised', related_name='categories', to='tasks.Task'),
        ),
    ]
