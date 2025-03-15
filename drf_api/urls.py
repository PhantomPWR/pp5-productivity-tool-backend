"""
URL configuration for the DRF API backend.

This module defines the URL patterns for the 
Django REST Framework (DRF) API backend.
It includes routes for authentication, registration, 
and various app-specific endpoints.

Routes:
- Root route for the API.
- Admin site route.
- DRF built-in authentication route.
- Custom logout route for dj-rest-auth.
- dj-rest-auth routes for authentication and registration.
- App-specific routes for profiles, tasks, categories, and comments.

Note:
- The custom logout route is placed above the default dj-rest-auth route
to ensure it is matched first.
"""
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)
from django.contrib import admin
from django.urls import path, include
from .views import root_route, logout_route
# from tasks.views import status_choices_view, TaskList, TaskDetail
from tasks.views import TaskList, TaskDetail


urlpatterns = [
    path('', root_route),
    path('admin/', admin.site.urls),
    path('api-auth/', include('rest_framework.urls')),
    # our logout route has to be above the default one to be matched first
    path('dj-rest-auth/logout/', logout_route),
    path('dj-rest-auth/', include('dj_rest_auth.urls')),
    path(
        'dj-rest-auth/registration/',
        include('dj_rest_auth.registration.urls')
    ),
    # path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    # path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    # path('status-choices/', status_choices_view, name='status-choices'),
    path('', include('profiles.urls')),
    path('', include('tasks.urls')),
    path('', include('categories.urls')),
    path('', include('comments.urls')),
]
