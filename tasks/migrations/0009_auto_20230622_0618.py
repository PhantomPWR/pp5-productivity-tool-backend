# Generated by Django 3.2.19 on 2023-06-22 06:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0008_auto_20230621_2059'),
    ]

    operations = [
        migrations.AlterField(
            model_name='task',
            name='priority',
            field=models.CharField(choices=[('PRIORITY1', '1'), ('PRIORITY2', '2'), ('PRIORITY3', '3')], default='PRIORITY1', max_length=25),
        ),
        migrations.AlterField(
            model_name='task',
            name='task_status',
            field=models.CharField(choices=[('BACKLOG', 'Backlog'), ('TODO', 'To Do'), ('INPROGRESS', 'In Progress'), ('COMPLETED', 'Completed')], default='BACKLOG', max_length=25),
        ),
    ]
