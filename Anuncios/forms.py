# en Anuncios/forms.py
from django import forms
from .models import AnuncioMascota

class AnuncioMascotaForm(forms.ModelForm):
    class Meta:
        model = AnuncioMascota
        fields = ['nombre', 'descripcion', 'imagen', 'fecha_perdida', 'lugar_perdida', 'edad', 'raza', 'genero', 'lleva_chip', 'telefono_contacto']
        widgets = {
            'nombre': forms.TextInput(attrs={'class': 'form-control'}),
            'descripcion': forms.Textarea(attrs={'class': 'form-control'}),
            'imagen': forms.ClearableFileInput(attrs={'class': 'form-control'}),
            'fecha_perdida': forms.DateInput(attrs={'class': 'form-control', 'type': 'date'}),
            'lugar_perdida': forms.TextInput(attrs={'class': 'form-control'}),
            'edad': forms.NumberInput(attrs={'class': 'form-control'}),
            'raza': forms.TextInput(attrs={'class': 'form-control'}),
            'genero': forms.Select(attrs={'class': 'form-control'}),
            'lleva_chip': forms.Select(attrs={'class': 'form-control'}),
            'telefono_contacto': forms.TextInput(attrs={'class': 'form-control'}),
        }
