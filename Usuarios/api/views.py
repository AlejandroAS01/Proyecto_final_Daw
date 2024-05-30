from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework import mixins,permissions,viewsets,filters,views,response,status
from django.shortcuts import get_object_or_404
from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework.exceptions import ValidationError
from Usuarios.api.pagination import LargeResultsSetPagination, StandartResultsSetPagination, ShortResultsSetPagination
from rest_framework.decorators import api_view , permission_classes
from rest_framework import authentication, permissions
from rest_framework.permissions import IsAdminUser
from Usuarios.models import MyUser 
from .serializers import MyUserSerializer

class MyUserListView(mixins.ListModelMixin,viewsets.GenericViewSet):
    serializer_class = MyUserSerializer
    filter_backends = (filters.OrderingFilter,filters.SearchFilter,)
    ordering = 'username'
    ordering_fields = ['username']
    search_fields = ['username']
    #permission_classes = [IsAdminUser]
    def get_queryset(self):
        return MyUser.objects.all()

class MyUserDetailView(mixins.ListModelMixin,
                                           mixins.CreateModelMixin,
                                           mixins.RetrieveModelMixin,
                                           mixins.UpdateModelMixin,
                                           mixins.DestroyModelMixin,
                                           viewsets.GenericViewSet):
  
    permission_classes = [IsAdminUser]
    serializer_class = MyUserSerializer

    def get_queryset(self):
        return MyUser.objects.all()
      
