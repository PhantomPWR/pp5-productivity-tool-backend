from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User


class Task(models.Model):
    """
    Task model, related to 'owner', i.e. a User instance.
    Default image set so that we can always reference image.url.
    """

    STATUS_CHOICES = [
        ('BACKLOG', 'Backlog'),
        ('TODO', 'To Do'),
        ('INPROGRESS', 'In Progress'),
        ('COMPLETED', 'Completed')
    ]

    PRIORITY_CHOICES = [
        ('PRIORITY1', '1'),
        ('PRIORITY2', '2'),
        ('PRIORITY3', '3')
    ]

    owner = models.ForeignKey(User, on_delete=models.CASCADE)
    created_date = models.DateTimeField(
        auto_now_add=True,
    )
    due_date = models.DateField(
        auto_now=True,
        null=True,
        blank=True,
    )
    updated_date = models.DateTimeField(
        auto_now=True,
        null=True,
        blank=True,
    )
    completed_date = models.DateTimeField(
        auto_now=True,
        null=True,
        blank=True,
    )

    title = models.CharField(max_length=255)
    description = models.TextField(blank=True)
    owner_comments = models.TextField(blank=True, null=True)
    image = models.FileField(
        upload_to='images/',
        default='../default_post_bge1xm',
        blank=True,
        null=True
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
    # category = models.CharField(
    #     max_length=255,
    #     blank=False,
    #     default="Uncategorised"
    # )
    category = models.ForeignKey(
        'Category',
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
    )

    class Meta:
        ordering = ['-created_date']

    def __str__(self):
        return f'{self.id} {self.title}'


class Category(models.Model):
    """
    Model for Categories - Used to group Tasks within a category.
    """
    title = models.CharField(max_length=50, null=False, blank=False)
    description = models.CharField(max_length=150)
    related_tasks = models.ManyToManyField(
        Task,
        related_name="categories",
        blank=True,
    )

    def __str__(self):
        return str(self.title)
