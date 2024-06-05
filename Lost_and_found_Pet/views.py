from django.shortcuts import render
from Anuncios.models import AnuncioMascota

# Devuelve la petición del home.html que lo obtiene del template
def home(request):
    anuncios = AnuncioMascota.objects.order_by('-id')[:3]
    return render(request, 'home.html', {'anuncios': anuncios})

def aviso_legal(request):
    return render(request, 'aviso_legal.html')

def contacto(request):
    return render(request, 'contacto.html')

def mi_usuario(request):
    anuncios = AnuncioMascota.objects.all().order_by('id')
    return render(request, 'mi_usuario.html',{'anuncios': anuncios})

def anuncios(request):
    anuncios = AnuncioMascota.objects.all().order_by('id')
    return render(request, 'anuncios.html',{'anuncios': anuncios})







