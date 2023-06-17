from django.http import Http404, JsonResponse
from django.db.models import Count
from rest_framework import status, permissions, filters, generics
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Task
from watchers.models import Watcher
from .serializers import TaskSerializer, TaskDetailSerializer
from drf_api.permissions import IsOwnerOrReadOnly


class TaskList(generics.ListCreateAPIView):
    """
    List all tasks
    No Create view (post method), as task creation handled by django signals
    """

    serializer_class = TaskSerializer
    permission_classes = [
        permissions.IsAuthenticatedOrReadOnly
    ]
    filter_backends = [
        filters.OrderingFilter,
        filters.SearchFilter,
        DjangoFilterBackend
    ]
    filterset_fields = [
        'task_watched__owner__profile',
        'owner__profile'
    ]
    queryset = Task.objects.annotate(
        watcher_count=Count('task_watched__task_watched', distinct=True),
    ).order_by('-created_date')

    ordering_fields = [
        'watcher_count',
    ]

    search_fields = [
        'owner__username',
        'owner__profile'
        'title',
        'category',
        'status',
        'priority'

    ]

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class TaskDetail(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = TaskDetailSerializer
    permission_classes = [IsOwnerOrReadOnly]
    queryset = Task.objects.annotate(
        watcher_count=Count('task_watched__task_watched', distinct=True),
    ).order_by('-created_date')
