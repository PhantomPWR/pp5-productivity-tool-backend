from django.http import Http404
from django.db.models import Count
from rest_framework import status, permissions, filters, generics
from rest_framework.views import APIView
from rest_framework.response import Response
from .models import Profile
from .serializers import ProfileSerializer
from drf_api.permissions import IsOwnerOrReadOnly
from django.contrib.auth.models import User


class ProfileList(generics.ListAPIView):
    """
    List all profiles
    No Create view (post method), as profile creation handled by django signals
    """

    serializer_class = ProfileSerializer
    queryset = Profile.objects.annotate(
        task_count=Count('owner__task', distinct=True),
    ).order_by('-created_at')
    filter_backends = [
        filters.OrderingFilter
    ]
    ordering_fields = [
        'task_count',
    ]


class ProfileDetail(generics.RetrieveUpdateAPIView):

    permission_classes = [IsOwnerOrReadOnly]
    serializer_class = ProfileSerializer
    queryset = Profile.objects.annotate(
        task_count=Count('owner__task', distinct=True),
    ).order_by('-created_at')


class UserList(APIView):
    """
    List all users
    """
    def get(self, request):
        users = User.objects.all().values()
        return Response(users)
