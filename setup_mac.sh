#!/bin/bash
echo "Criando ambiente virtual..."
python3 -m venv venv

echo "Ativando ambiente virtual..."
source venv/bin/activate

echo "Instalando dependências..."
pip install --upgrade pip
pip install -r requirements.txt

echo "Aplicando migrações..."
python manage.py migrate

echo "Iniciando o servidor Django..."
python manage.py runserver

# chmod +x setup_mac.sh