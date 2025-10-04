
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

Configure os templates!
Criar uma pasta chamada template e dentro dela o arquivo base.html

templates/base.html

Construa o base.html em templates/:
- Base
    ```python
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1.0" />
            <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
            {% block 'head' %}
            {% endblock 'head' %}
        </head>
        <body class="bg-slate-100/40">
            {% block 'body' %}
            {% endblock 'body' %}
        </body>
    </html>

    ```

Usuario/templates/cadastro.html

- Construa o cadastro.html

    ```python
    {% extends "base.html" %}
    {% load static %}
    {% block 'body' %}
        <div class="flex min-h-screen">
            <div class="flex flex-1 flex-col justify-center px-4 py-12 sm:px-6 lg:flex-none lg:px-20 xl:px-24">
                <div class="mx-auto w-full max-w-sm lg:w-96">
                    <div>
                        <img src="{% static 'logo.png' %}" alt="Your Company" class="h-22 w-auto" />
                        <h2 class="mt-4 text-2xl/9 font-bold tracking-tight text-gray-900">Crie sua conta</h2>
                        <p class="mt-2 text-sm/6 text-gray-500">
                            Já é membro?
                            <a href=""
                            class="font-semibold text-indigo-600 hover:text-indigo-500">Faça login</a>
                        </p>
                    </div>
                    <div class="mt-10">
                        <div>
                            <form action="#" method="POST" class="space-y-6">
                            
                                <div>
                                    <label for="email" class="block text-sm/6 font-medium text-gray-900">Nome de usuário</label>
                                    <div class="mt-2">
                                        <input id="username"
                                            type="text"
                                            name="username"
                                            required
                                            autocomplete="email"
                                            class="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6" />
                                    </div>
                                </div>
                                <div>
                                    <label for="password" class="block text-sm/6 font-medium text-gray-900">Senha</label>
                                    <div class="mt-2">
                                        <input id="password"
                                            type="password"
                                            name="senha"
                                            required
                                            autocomplete="current-password"
                                            class="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6" />
                                    </div>
                                </div>
                                <div>
                                    <label for="confirm-password"
                                        class="block text-sm/6 font-medium text-gray-900">Confirmar senha</label>
                                    <div class="mt-2">
                                        <input id="password"
                                            type="password"
                                            name="confirmar_senha"
                                            required
                                            autocomplete="current-password"
                                            class="block w-full rounded-md bg-white px-3 py-1.5 text-base text-gray-900 outline-1 -outline-offset-1 outline-gray-300 placeholder:text-gray-400 focus:outline-2 focus:-outline-offset-2 focus:outline-indigo-600 sm:text-sm/6" />
                                    </div>
                                </div>
                                <div>
                                    <button type="submit"
                                            class="flex w-full justify-center rounded-md bg-indigo-600 px-3 py-1.5 text-sm/6 font-semibold text-white shadow-xs hover:bg-indigo-500 focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-indigo-600">
                                        Cadastrar
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="border-r border-1 border-slate-800/10 relative hidden w-0 flex-1 lg:block">
                <div class="absolute inset-0 bg-cover bg-center"
                    style="background-image: url('{% static 'bg.jpg' %}')"></div>
            </div>
        </div>
    {% endblock 'body' %}

    ```

## Adicione as imagens no templates/static

