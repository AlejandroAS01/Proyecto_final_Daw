from django.contrib import messages
from django.shortcuts import redirect

class DependencyErrorMixin:
    def delete(self, request, *args, **kwargs):
        try:
            response = super().delete(request, *args, **kwargs)
        except ProtectedError as e:
            messages.error(self.request, 'No se puede realizar la operación de borrado porque existen dependencias.')
            return redirect(self.success_url)
        return response