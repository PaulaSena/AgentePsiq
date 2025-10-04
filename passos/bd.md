
# Banco de Dados

```python
python manage.py migrate
```

### **Configure o `.env` (opcional, mas comum)**

Você tem `python-decouple` e `python-dotenv`, então provavelmente usará variáveis de ambiente.

Crie um `.env` com as configurações básicas:

```
DEBUG=True
SECRET_KEY=sua_chave_aqui
ALLOWED_HOSTS=localhost,127.0.0.1
OPENAI_API_KEY=sua_chave_aqui

```

---

### **Migrar banco de dados**

No diretório do projeto Django, rode:

```bash
python manage.py migrate

```

Criar um Super Usuario

```bash
python3 manage.py createsuperuser

```

---

### **Rodar o servidor**
```bash
python manage.py runserver

```