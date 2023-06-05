from django.db import models
from django.contrib.auth.models import User
from tasks.models import Task


class Watcher(models.Model):
    """
    Watcher model, related to 'owner' and 'task'.
    'owner' is a User instance and 'task' is a Task instance.
    'unique_together' makes sure a user can't watch the same post twice.
    """
    owner = models.ForeignKey(
        User,
        related_name='watching',
        on_delete=models.CASCADE
    )
    watched = models.ForeignKey(
        Task,
        related_name='watched',
        on_delete=models.CASCADE
    )
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        # ordering = ['-created_at']
        unique_together = ['owner', 'watched']

    def __str__(self):
        return f'{self.owner} {self.watched}'
