
from rest_framework import serializers
from Usuarios.models import MyUser

class MyUserSerializer(serializers.ModelSerializer):
    class Meta:
        model = MyUser
        fields = ['id', 'username', 'email', 'activo', 'create_date', 'update_date', 'is_staff', 'is_superuser']