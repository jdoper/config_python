#!/bin/bash

echo "Instalando pip..."
sudo apt install python-pip

echo "Instalando virtualenvwrapper..."
sudo pip install virtualenvwrapper

echo "Confiurando virtualenvwrapper..."
mkdir ~/.virtualenvs

echo "export WORKON_HOME=~/.virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

echo "Instalando PostgreSQL e pgAdmin3..."
sudo apt install postgresql postgresql-server-dev-10 pgadmin3

sudo -u postgres psql -c "ALTER USER postgres> PASSWORD 'postgres';"

exec bash
echo "Pronto, pode usar!"
