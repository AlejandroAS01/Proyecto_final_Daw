from django.contrib.auth.views import LoginView,LogoutView
from django.template import RequestContext
from django.shortcuts import render, redirect
from django.contrib.auth import logout
# Create your views here.
# Crea la view para formar la plantilla para iniciar sesion
class LoginFormView(LoginView):
    template_name='login.html'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['title']='Iniciar sesion'
        return context


class LogoutFormView(LogoutView):
    template_name = 'logout.html' 
    def get(self, request, *args, **kwargs):
        return render(request, self.template_name)

    def post(self, request, *args, **kwargs):
        logout(request)
        return redirect('/')