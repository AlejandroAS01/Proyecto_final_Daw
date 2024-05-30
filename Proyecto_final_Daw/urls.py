"""Proyecto_final_Daw URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path ,include
from django.conf import settings
from django.conf.urls.static import static

from Lost_and_found_Pet import views as Lost_and_found_Pet_views
from Login import views as Login_views
from Anuncios import views as Anuncios_views
from Usuarios import views as Usuarios_views
from django.contrib.auth import views as auth_views



urlpatterns = [
    path('admin/', admin.site.urls),
    path('', Lost_and_found_Pet_views.home, name="home"),
    path('aviso_legal/', Lost_and_found_Pet_views.aviso_legal, name='aviso_legal'),
    path('anuncios/', Lost_and_found_Pet_views.anuncios, name='anuncios'),
    path('mi_usuario/', Lost_and_found_Pet_views.mi_usuario, name='mi_usuario'),

    # La url que nos permite acceder al inicio de sesion
    path('login/',Login_views.LoginFormView.as_view(),name="login"),
    path('logout/', Login_views.LogoutFormView.as_view(), name='logout'),
    # La url para entrar dentro de los anuncios
    path('anuncios/<int:anuncio_id>/', Anuncios_views.detalle_anuncio, name='anuncio_mascota'),
    #La url para crear los anuncios
    path('crear_anuncio_mascota/', Anuncios_views.crear_anuncio_mascota, name='crear_anuncio_mascota'),

]


if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)