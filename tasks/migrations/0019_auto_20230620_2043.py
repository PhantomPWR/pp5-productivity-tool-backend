# Generated by Django 3.2.19 on 2023-06-20 20:43

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tasks', '0018_alter_task_due_date'),
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
