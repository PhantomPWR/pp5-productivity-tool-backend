from django.http import Http404, JsonResponse
from django.db.models import Count
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.views import APIView
from rest_framework import serializers
from rest_framework import (
    filters,
    generics,
    permissions,
    status,
)
from .models import Category
from .serializers import (
    CategorySerializer,
    CategoryDetailSerializer
)


class CategoryList(generics.ListCreateAPIView):
    """
    - List all categories
    - Create category if logged in
    """

    serializer_class = CategorySerializer
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
