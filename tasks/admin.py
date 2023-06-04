from django.contrib import admin
from .models import Task


class TaskAdmin(admin.ModelAdmin):
    fields = [
            'owner', 'title', 'category',
            'notes', 'attachments', 'priority', 'status',
            'created_date', 'due_date', 'updated_date', 'completed_date'
        ]
    readonly_fields = ('created_date',)


admin.site.register(Task, TaskAdmin)
