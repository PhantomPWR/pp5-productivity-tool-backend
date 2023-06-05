from django.http import Http404
from rest_framework import status, permissions, filters, generics
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Task
from .serializers import TaskSerializer
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
        filters.SearchFilter,
    ]
    queryset = Task.objects.all()

    search_fields = [
        'owner__username',
        'title',
    ]

    def perform_create(self, serializer):
        serializer.save(owner=self.request.user)


class TaskDetail(generics.RetrieveUpdateDestroyAPIView):
    serializer_class = TaskSerializer
    permission_classes = [IsOwnerOrReadOnly]
    queryset = Task.objects.all()
