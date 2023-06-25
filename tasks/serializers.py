from django.contrib.humanize.templatetags.humanize import naturaltime
from rest_framework import serializers
from tasks.models import Task, Category
from watchers.models import Watcher


class TaskSerializer(serializers.ModelSerializer):
    owner = serializers.ReadOnlyField(source='owner.username')
    is_owner = serializers.SerializerMethodField()
    profile_id = serializers.ReadOnlyField(source='owner.profile.id')
    profile_image = serializers.ReadOnlyField(source='owner.profile.image.url')
    watched_id = serializers.SerializerMethodField()
    watcher_count = serializers.ReadOnlyField()
    comment_count = serializers.ReadOnlyField()
    created_date = serializers.SerializerMethodField()
    updated_date = serializers.SerializerMethodField()

    def get_is_owner(self, obj):
        request = self.context['request']
        return request.user == obj.owner

    def get_created_date(self, obj):
        return naturaltime(obj.created_date)

    def get_updated_date(self, obj):
        return naturaltime(obj.updated_date)

    def get_watched_id(self, obj):
        user = self.context['request'].user
        if user.is_authenticated:
            task_watched = Watcher.objects.filter(
                owner=user, task_watched=obj
            ).first()
            return task_watched.id if task_watched else None
        return None

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
            'owner_comments',
            'created_date',
            'due_date',
            'updated_date',
            'completed_date',
            'is_owner',
            'comment_count',
            'watched_id',
            'watcher_count'
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


class StatusChoicesSerializer(serializers.Serializer):
    value = serializers.CharField(max_length=25)
    label = serializers.CharField(max_length=25)


class PriorityChoicesSerializer(serializers.Serializer):
    value = serializers.CharField(max_length=25)
    label = serializers.CharField(max_length=25)


class CategorySerializer(serializers.ModelSerializer):
    title = serializers.CharField(max_length=100)
    description = serializers.CharField(max_length=255)
    related_tasks = serializers.PrimaryKeyRelatedField(
        queryset=Task.objects.all(),
        # many=True
    )

    class Meta:
        model = Category
        fields = '__all__'


class CategoryDetailSerializer(CategorySerializer):
    category = serializers.ReadOnlyField(source='pk')

    class Meta:
        model = Category
        fields = '__all__'
