from django.utils import timezone
from django.contrib.humanize.templatetags.humanize import naturaltime
from rest_framework import serializers
from tasks.models import Task
from categories.models import Category


class TaskSerializer(serializers.ModelSerializer):
    owner = serializers.ReadOnlyField(source='owner.username')
    is_owner = serializers.SerializerMethodField()
    profile_id = serializers.ReadOnlyField(source='owner.profile.id')
    profile_image = serializers.ReadOnlyField(source='owner.profile.image.url')
    comment_count = serializers.ReadOnlyField()
    created_date = serializers.SerializerMethodField()
    updated_date = serializers.SerializerMethodField()
    completed_date = serializers.ReadOnlyField()

    def get_is_owner(self, obj):
        request = self.context['request']
        return request.user == obj.owner

    def get_created_date(self, obj):
        return naturaltime(obj.created_date)

    def get_updated_date(self, obj):
        return naturaltime(obj.updated_date)

    def update(self, instance, validated_data):
        if 'task_status' in validated_data and validated_data['task_status'] == 'COMPLETED':
            instance.completed_date = timezone.now()
        return super().update(instance, validated_data)

    def get_priority(self, obj):
        return obj.get_priority_display()
        
    def get_status(self, obj):
        return obj.get_status_display()

    class Meta:
        model = Task
        fields = [
            'id',
            'owner',
            'title',
            'category',
            'description',
            'image',
            'profile_id',
            'profile_image',
            'priority',
            'task_status',
            'created_date',
            'due_date',
            'updated_date',
            'completed_date',
            'is_owner',
            'comment_count',
        ]


class TaskDetailSerializer(TaskSerializer):
    task = serializers.ReadOnlyField(source='task.id')
    
    class Meta:
        model = Task
        fields = [
            'id',
            'owner',
            'title',
            'category',
            'description',
            'image',
            'profile_id',
            'profile_image',
            'priority',
            'task_status',
            'created_date',
            'due_date',
            'updated_date',
            'completed_date',
            'is_owner',
            'task'
        ]


class StatusChoicesSerializer(serializers.Serializer):
    value = serializers.CharField(max_length=25)
    label = serializers.CharField(max_length=25)


class PriorityChoicesSerializer(serializers.Serializer):
    value = serializers.CharField(max_length=25)
    label = serializers.CharField(max_length=25)

