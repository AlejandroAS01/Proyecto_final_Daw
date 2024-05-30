from django.contrib import admin
from .models import AnuncioMascota

# Register your models here.
class AnuncioMascotaAdmin(admin.ModelAdmin):
    list_display = (['nombre', 'descripcion', 'imagen', 'fecha_perdida', 'lugar_perdida','edad','raza','genero','lleva_chip','telefono_contacto'])
    list_display_links = ('nombre', 'fecha_perdida','lugar_perdida')  
    search_fields = ('nombre', 'fecha_perdida')

admin.site.register(AnuncioMascota, AnuncioMascotaAdmin)
