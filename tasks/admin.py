from django.contrib import admin
from .models import Task


class TaskAdmin(admin.ModelAdmin):
    fields = [
        'id',
        'owner',
        'title',
        'category',
        'notes',
        'image',
        'profile_id',
        'profile_image',
        'priority',
        'task_status',
        'owner_comments',
        'created_date',
        'due_date',
        'updated_date',
        'completed_date',
        'is_owner',
        'watched_id',
        'watcher_count',
        'task'
    ]
    readonly_fields = ('created_date',)


admin.site.register(Task, TaskAdmin)
