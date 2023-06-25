from django.http import Http404, JsonResponse
from django.db.models import Count
from rest_framework import status, permissions, filters, generics
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Task, Category
from comments.models import Comment
from .serializers import (
    TaskSerializer,
    TaskDetailSerializer,
    CategorySerializer,
    CategoryDetailSerializer
)
from drf_api.permissions import IsOwnerOrReadOnly


class TaskList(generics.ListCreateAPIView):
    """
    - List all tasks
    - Create task if logged in
    """

    serializer_class = TaskSerializer
    permission_classes = [
        permissions.IsAuthenticatedOrReadOnly
    ]

    queryset = Task.objects.annotate(
        comment_count=Count('comment', distinct=True),
    ).order_by('-created_date')

    filter_backends = [
        filters.OrderingFilter,
        filters.SearchFilter,
        DjangoFilterBackend
    ]
    ordering_fields = [
        'comment_count',
    ]
    filterset_fields = [
        'owner__username',
        'owner__profile',
        'title',
        'category',
        'task_status',
        'priority'
    ]
    search_fields = [
        'owner__username',
        'owner__profile__name',
        'title',
        'category',
        'task_status',
        'priority'

    ]

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class TaskDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    - Get single task detail
    """

    serializer_class = TaskDetailSerializer
    permission_classes = [IsOwnerOrReadOnly]
    queryset = Task.objects.annotate(
        comment_count=Count('comment', distinct=True),
    ).order_by('-created_date')


class StatusChoicesView(APIView):
    """
    - Get available task status choices
    """

    def get(self, request):
        status_choices = []
        for choice in Task.STATUS_CHOICES:
            status_choices.append({'value': choice[0], 'label': choice[1]})
        return Response(status_choices)


class PriorityChoicesView(APIView):
    """
    - Get available task priority choices
    """

    def get(self, request):
        priority_choices = []
        for choice in Task.PRIORITY_CHOICES:
            priority_choices.append({'value': choice[0], 'label': choice[1]})
        return Response(priority_choices)


class CategoryList(generics.ListCreateAPIView):
    """
    - List all categories
    - Create category if logged in
    """

    serializer_class = Category
    permission_classes = [
        permissions.IsAuthenticated
    ]

    queryset = Category.objects.all()

    filter_backends = [
        filters.OrderingFilter,
        filters.SearchFilter,
        DjangoFilterBackend
    ]
    filterset_fields = '__all__'
    search_fields = '__all__'

    def perform_create(self, serializer):
        serializer.save(id='pk')


class CategoryDetail(generics.RetrieveUpdateDestroyAPIView):
    """
    - Get single category detail
    """

    serializer_class = CategoryDetailSerializer
