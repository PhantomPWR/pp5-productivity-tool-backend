from django.contrib.auth.models import User
from .models import Task
from rest_framework import status
from rest_framework.test import APITestCase


class TaskListViewTests(APITestCase):
    def setUp(self):
        User.objects.create_user(username='rick', password='allen')

    def test_can_list_tasks(self):
        rick = User.objects.get(username='rick')
        Task.objects.create(owner=rick, title='a title')
        response = self.client.get('/tasks/')
        # self.assertEqual(response.status_code, status.HTTP_201_CREATED)  # Test Fail
        self.assertEqual(response.status_code, status.HTTP_200_OK)  # Test Pass
        print(response.data)
        print(len(response.data))

    def test_logged_in_user_can_create_task(self):
        self.client.login(username='rick', password='allen')
        response = self.client.post('/tasks/', {'title': 'a title'})
        count = Task.objects.count()
        self.assertEqual(count, 1)
        # self.assertEqual(response.status_code, status.HTTP_200_OK)  # Test Fail
        self.assertEqual(response.status_code, status.HTTP_201_CREATED)  # Test Pass

    def test_user_not_logged_in_cant_create_task(self):
        response = self.client.post('/tasks/', {'title': 'a title'})
        # self.assertEqual(response.status_code, status.HTTP_200_OK)  # Test Fail
        self.assertEqual(response.status_code, status.HTTP_403_FORBIDDEN)  # Test Pass
