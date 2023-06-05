from rest_framework import serializers
from .models import Task
from watchers.models import Watcher


class TaskSerializer(serializers.ModelSerializer):
    owner = serializers.ReadOnlyField(source='owner.username')
    is_owner = serializers.SerializerMethodField()
    watching_id = serializers.SerializerMethodField()

    def get_is_owner(self, obj):
        request = self.context['request']
        return request.user == obj.owner

    def get_watching_id(self, obj):
        user = self.context['request'].user
        print(user)
        if user.is_authenticated:
            watching = Watcher.objects.filter(
                # owner=user, watched=obj.owner
                owner=user
            ).first()
            print(watching)

    class Meta:
        model = Task
        fields = [
            'id', 'owner', 'title', 'category',
            'notes', 'attachments', 'priority', 'status', 'owner_comments',
            'created_date', 'due_date', 'updated_date', 'completed_date',
            'is_owner', 'watching_id'
        ]
