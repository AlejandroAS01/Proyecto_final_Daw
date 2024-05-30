from django.contrib import admin
from .models import MyUser

# Register your models here.
class MyUserAdmin(admin.ModelAdmin):
    list_display = ('email', 'username', 'is_staff', 'is_superuser', 'is_active')
    list_display_links = ('email', 'username')  
    search_fields = ('email', 'username')

admin.site.register(MyUser, MyUserAdmin)

