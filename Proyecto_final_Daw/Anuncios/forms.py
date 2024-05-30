# en Anuncios/forms.py
from django import forms
from .models import AnuncioMascota

class AnuncioMascotaForm(forms.ModelForm):
    class Meta:
        model = AnuncioMascota
        fields = ['nombre', 'descripcion', 'imagen', 'fecha_perdida', 'lugar_perdida','edad','raza','genero','lleva_chip','telefono_contacto']
