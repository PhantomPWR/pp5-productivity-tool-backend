from django.db import IntegrityError
from rest_framework import serializers
from .models import Watcher


class WatcherSerializer(serializers.ModelSerializer):
    '''
    Serializer for the Watcher model
    The create method handles the unique constraint on 'owner' and 'post'
    '''

    owner = serializers.ReadOnlyField(source='owner.username')
    watched_name = serializers.ReadOnlyField(source='watched.username')

    class Meta:
        model = Watcher
        fields = [
            # 'created_at', 'owner', 'task'
            'created_at', 'owner', 'watched', 'watched_name'
        ]

    def create(self, validated_data):
        try:
            return super().create(validated_data)
        except IntegrityError:
            raise serializers.ValidationError({
                'detail': 'You\'re already watching this task'
            })
