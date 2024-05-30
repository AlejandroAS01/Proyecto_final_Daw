from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager, PermissionsMixin, Group, Permission


class MyUserManager(BaseUserManager):
    def create_user(self, email, password=None, type=None, **extra_fields):
        if not email:
            raise ValueError("Debe proporcionar un email válido")

        user = self.model(
            email=self.normalize_email(email),
            **extra_fields
        )
        user.is_active = False
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, password, **extra_fields):
        if not email:
            raise ValueError("Debe proporcionar un email válido")

        user = self.create_user(
            email=self.normalize_email(email),
            password=password,
            **extra_fields
        )
        user.is_staff = True
        user.is_active = True
        user.is_superuser = True
        user.save(using=self._db)
        return user


class MyUser(AbstractBaseUser,PermissionsMixin):
    username = models.CharField(max_length=128, verbose_name='nombre_usuario', unique=True)
    email = models.EmailField(verbose_name='email', unique=True)
    activo = models.BooleanField(verbose_name='activo', default=True)
    create_date = models.DateTimeField(verbose_name='fecha_creación', auto_now_add=True)
    update_date = models.DateTimeField(verbose_name='fecha_edición', auto_now=True)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)
    #Usar el email en vez del nombre de usuario para registrarse
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    objects = MyUserManager()

    groups = models.ManyToManyField(Group, verbose_name='groups', blank=True,
                                    help_text='The groups this user belongs to.',
                                    related_name='myuser_set', related_query_name='user')
    #Permisos necesarios del usuario
    user_permissions = models.ManyToManyField(Permission, verbose_name='user permissions', blank=True,
                                              help_text='Specific permissions for this user.',
                                              related_name='myuser_set', related_query_name='user')

    def __str__(self):
        return self.email

