from rest_framework import serializers
from .models import Task


class TaskSerializer(serializers.ModelSerializer):
    owner = serializers.ReadOnlyField(source='owner.username')
    is_owner = serializers.SerializerMethodField()

    def get_is_owner(self, obj):
        request = self.context['request']
        return request.user == obj.owner

    class Meta:
        model = Task
        fields = [
            'id', 'owner', 'title', 'category',
            'notes', 'attachments', 'priority', 'status', 'owner_comments',
            'created_date', 'due_date', 'updated_date', 'completed_date',
            'is_owner'
        ]
