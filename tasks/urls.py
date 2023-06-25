from django.urls import path
from tasks import views

urlpatterns = [
    path('tasks/', views.TaskList.as_view()),
    path('tasks/<int:pk>/', views.TaskDetail.as_view()),
    path('categories/', views.CategoryList.as_view()),
    path('categories/<int:pk>/', views.CategoryDetail.as_view()),
    path('status-choices/',
         views.StatusChoicesView.as_view(),
         name='status_choices'
         ),
    path('priority-choices/',
         views.PriorityChoicesView.as_view(),
         name='priority_choices'
         ),
]
