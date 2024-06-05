# en Anuncios/views.py
from django.shortcuts import render, redirect, get_object_or_404

from .forms import AnuncioMascotaForm
from .models import AnuncioMascota

def crear_anuncio_mascota(request):
    if request.method == 'POST':
        form = AnuncioMascotaForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('home')
    else:
        form = AnuncioMascotaForm()

    return render(request, 'crear_anuncio_mascota.html', {'form': form})

def detalle_anuncio(request, anuncio_id):
    anuncio = get_object_or_404(AnuncioMascota, pk=anuncio_id)
    return render(request, 'anuncio_mascota.html', {'anuncio': anuncio})

def editar_anuncio(request, anuncio_id):
    anuncio = get_object_or_404(AnuncioMascota, pk=anuncio_id)
    if request.method == 'POST':
        form = AnuncioMascotaForm(request.POST, request.FILES, instance=anuncio)
        if form.is_valid():
            form.save()
            return redirect('anuncio_mascota', anuncio_id=anuncio.id)  # Aquí es donde se hace la corrección
    else:
        form = AnuncioMascotaForm(instance=anuncio)

    return render(request, 'editar_anuncio_mascota.html', {'form': form})
