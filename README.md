# AgentePsiq

Certifique-se de que o Python está instalado no seu sistema. Você pode verificar isso executando o comando 

```python
python3 --version
```
 no terminal

Crie um ambiente virtual para isolar suas dependências do projeto. Use o comando 

```python
python3 -m venv nome_do_ambiente
```

Ative o ambiente virtual. No macOS, use o comando 

```python
source nome_do_ambiente/bin/activate
```

Instale o Django no ambiente virtual usando o comando 

```pip install django```

em caso de erro pip

```python3 -m ensurepip --upgrade```

ou 
```python3 -m pip install --upgrade pip```

Verifique se o Django foi instalado corretamente 

executando 

```django-admin --version```

Crie um novo projeto Django com o comando 

```django-admin startproject nome_do_projeto```

Navegue até o diretório do projeto com 

```cd nome_do_projeto```

e inicie o servidor de desenvolvimento com 

```python manage.py runserver```