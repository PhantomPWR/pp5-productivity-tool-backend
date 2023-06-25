from rest_framework import serializers
from .models import Category
from tasks.models import Task


class CategorySerializer(serializers.ModelSerializer):
    title = serializers.CharField(max_length=100)
    description = serializers.CharField(max_length=255)
    related_tasks = serializers.PrimaryKeyRelatedField(
        queryset=Task.objects.all(),
        many=True
    )

    class Meta:
        model = Category
        fields = '__all__'


class CategoryDetailSerializer(CategorySerializer):
    category = serializers.ReadOnlyField(source='pk')

    class Meta:
        model = Category
        fields = '__all__'