from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User


class Task(models.Model):
    """
    Task model, related to 'owner', i.e. a User instance.
    Default image set so that we can always reference image.url.
    """

    STATUS_CHOICES = [
        ('Backlog', 'BACKLOG'),
        ('To Do', 'TODO'),
        ('In Progress', 'INPROGRESS'),
        ('Completed', 'COMPLETED')
    ]

    PRIORITY_CHOICES = [
        ('1', 'PRIORITY1'),
        ('2', 'PRIORITY2'),
        ('3', 'PRIORITY3')
    ]

    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    created_date = models.DateTimeField(
        auto_now_add=True
    )
    due_date = models.DateTimeField(
        auto_now_add=False,
        auto_now=False,
        default=timezone.now
    )
    updated_date = models.DateTimeField(
        auto_now_add=False,
        auto_now=False,
        default=timezone.now
    )
    completed_date = models.DateTimeField(
        auto_now_add=False,
        auto_now=False,
        default=timezone.now
    )
    title = models.CharField(max_length=255)
    notes = models.TextField(blank=True)
    owner_comments = models.TextField(blank=True, null=True)
    image = models.FileField(
        upload_to='images/', default='../default_post_bge1xm', blank=True, null=True
    )
    priority = models.CharField(
        max_length=25,
        choices=PRIORITY_CHOICES,
        default='PRIORITY1'
    )
    task_status = models.CharField(
        max_length=25,
        choices=STATUS_CHOICES,
        default='BACKLOG'
    )
    category = models.CharField(
        max_length=255,
        blank=False,
        default="Uncategorised"
    )

    class Meta:
        ordering = ['-created_date']

    def __str__(self):
        return f'{self.id} {self.title}'


# To-do: Add category model to pre-populate a select list