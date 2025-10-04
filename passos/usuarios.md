
- Cadastro Usuários
    Em core.urls crie a URL para os usuários:

    core.urls

    ```python
    path('usuarios/', include('usuarios.urls'))
    ```

    Em usuarios.urls crie a URL para o cadastro:

    **urls.py**

    ```python
    from django.urls import path
    from . import views

    urlpatterns = [
        path('cadastro/', views.cadastro, name='cadastro'),
    ]
    ```

    Vamos construir a VIEW cadastro:

    **views.py**

    ```python
    def cadastro(request):
        if request.method == 'GET':
            return render(request, 'cadastro.html')
    ```

    Configure os arquivos estáticos e de media:

    **core/settings.py**

    ```python
    import os

    STATIC_URL = 'static/'
    STATICFILES_DIRS = (os.path.join(BASE_DIR, 'templates/static'),)
    STATIC_ROOT = os.path.join(BASE_DIR, 'staticfiles')

    MEDIA_ROOT = os.path.join(BASE_DIR, 'media')
    MEDIA_URL = '/media/'
    ```
