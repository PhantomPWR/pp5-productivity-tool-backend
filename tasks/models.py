from django.db import models
from django.contrib.auth.models import User


class Task(models.Model):
    """
    Task model, related to 'owner', i.e. a User instance.
    Default image set so that we can always reference image.url.
    """
    
    PRIORITY1 = "1"
    PRIORITY2 = "2"
    PRIORITY3 = "3"
    priority_choices = [
        (PRIORITY1, "1"),
        (PRIORITY2, "2"),
        (PRIORITY3, "3")
    ]

    BACKLOG = "Backlog"
    TODO = "To Do"
    INPROGRESS = "In Progress"
    COMPLETED = "Completed"
    status_choices = [
        (BACKLOG, "Backlog"),
        (TODO, "To Do"),
        (INPROGRESS, "In Progress"),
        (COMPLETED, "Completed")
    ]

    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    created_date = models.DateTimeField(auto_now_add=True)
    due_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    completed_date = models.DateTimeField(auto_now=True)
    title = models.CharField(max_length=255)
    content = models.TextField(blank=True)
    attachments = models.FileField(
        upload_to='images/', default='../default_post_bge1xm', blank=True
    )
    comments = models.TextField(blank=True)
    priority = models.CharField(
        max_length=1,
        choices=priority_choices,
        default=PRIORITY1
    )
    status = models.CharField(
        max_length=25,
        choices=status_choices,
        default=BACKLOG
    )

    class Meta:
        ordering = ['-created_date']

    def __str__(self):
        return f'{self.id} {self.title}'
