from django.db import models
from django.contrib.auth.models import User
from tasks.models import Task


class Comment(models.Model):
    """
    Comment model, related to User and Task
    """
    owner = models.ForeignKey(
        User,
        on_delete=models.CASCADE
    )
    task = models.ForeignKey(
        Task, on_delete=models.CASCADE
    )
    created_date = models.DateTimeField(
        auto_now_add=True
    )
    updated_date = models.DateTimeField(
        auto_now=True
    )
    content = models.TextField(
        null=True,
    )

    class Meta:
        ordering = ['-created_date']

    def __str__(self):
        return self.content
