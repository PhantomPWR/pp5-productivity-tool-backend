from rest_framework import serializers
from .models import Category
from tasks.models import Task


class CategorySerializer(serializers.ModelSerializer):
    title = serializers.CharField(max_length=100)
    description = serializers.CharField(max_length=255)
    related_tasks = serializers.SlugRelatedField(
        many=True,
        slug_field='id',
        queryset=Task.objects.all(),
    )

    class Meta:
        model = Category
        fields = '__all__'


class CategoryDetailSerializer(CategorySerializer):
    category = serializers.ReadOnlyField(source='id')

    class Meta:
        model = Category
        fields = '__all__'
