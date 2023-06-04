from django.db import models
from django.contrib.auth.models import User
from tasks.models import Task


class Watcher(models.Model):
    """
    Watcher model, related to 'owner' and 'task'.
    'owner' is a User instance and 'task' is a Task instance.
    'unique_together' makes sure a user can't watch the same post twice.
    """
    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    task = models.ForeignKey(
        Task, related_name='likes', on_delete=models.CASCADE
    )
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['-created_at']
        unique_together = ['owner', 'task']

    def __str__(self):
        return f'{self.owner} {self.task}'
