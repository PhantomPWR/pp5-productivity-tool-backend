from rest_framework import serializers
from tasks.models import Task
from watchers.models import Watcher


class TaskSerializer(serializers.ModelSerializer):
    owner = serializers.ReadOnlyField(source='username')
    is_owner = serializers.SerializerMethodField()
    watched_id = serializers.SerializerMethodField()

    def get_is_owner(self, obj):
        request = self.context['request']
        return request.user == obj.owner

    def get_watched_id(self, obj):
        user = self.context['request'].user
        if user.is_authenticated:
            task_watched = Watcher.objects.filter(
                owner=user, task_watched=obj
            ).first()
            return task_watched.id if task_watched else None
        return None

    class Meta:
        model = Task
        fields = [
            'id', 'owner', 'title', 'category',
            'notes', 'attachments', 'priority', 'status', 'owner_comments',
            'created_date', 'due_date', 'updated_date', 'completed_date',
            'is_owner', 'watched_id'
        ]
