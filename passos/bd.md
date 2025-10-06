## **Passo a Passo para Execução**

### **1. Configuração Inicial**

```bash
# Criar ambiente virtual

# Linux
python3.12 -m venv venv
python -m venv venv

# Windows:
python -m venv venv
python3 -m venv venv

# Ativar ambiente

# Linux/Mac:
source venv/bin/activate 
# Windows:
venv\\Scripts\\activate

# Instalar dependências
pip install -r requirements.txt
```
pip install --upgrade pip

### **2. Configuração do Banco de Dados**

```bash
# Criar migrações para gerar Banco de Dados
python manage.py makemigrations
python3 manage.py makemigrations

# Aplicar migrações
python manage.py migrate
python3 manage.py migrate


# Criar superusuário 

python manage.py createsuperuser
python3 manage.py createsuperuser


```

### **Rodar o servidor**
```bash
python manage.py runserver
python3 manage.py runserver

```
http://127.0.0.1:8000/
/admin
