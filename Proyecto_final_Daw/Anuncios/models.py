from django.db import models
from django.core.validators import RegexValidator

# Create your models here.

class AnuncioMascota(models.Model):
    nombre = models.CharField(max_length=255)
    descripcion = models.TextField()
    imagen = models.ImageField(upload_to='mascotas_imagenes/')
    fecha_perdida = models.DateField()
    lugar_perdida = models.CharField(max_length=255)
    edad = models.PositiveIntegerField(default=0)  
    raza = models.CharField(max_length=255, default='')
    genero = models.CharField(max_length=10, choices=[('Masculino', 'Masculino'), ('Femenino', 'Femenino')], default='Masculino')
    lleva_chip = models.CharField(max_length=10, choices=[('Si', 'Si'), ('No', 'No')], default='No')
    
    telefono_contacto = models.CharField(max_length=20, default='',validators=[RegexValidator(r'^[\d\s]+$')])

    def get_absolute_url(self):
        return reverse('detalle_anuncio', args=[str(self.id_anuncio)])