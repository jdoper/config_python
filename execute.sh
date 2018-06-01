#!/bin/bash

echo "---------------------------------------------------------------"
echo "|                 ___ _             _   _                     |"
echo "|     ___ ___ ___|  _|_|___       _| | |_|___ ___ ___ ___     |"
echo "|    |  _| . |   |  _| | . |     | . | | | .'|   | . | . |    |"
echo "|    |___|___|_|_|_| |_|_  |_____|___|_| |__,|_|_|_  |___|    |"
echo "|                      |___|_____|   |___|       |___|        |"
echo "|                                                             |"
echo "|                                                             |"
echo "|    Mantido por https://github.com/jdoper                    |"
echo "|    Criado em: Sep 3, 2016                                   |"
echo "|                                                             |"
echo "---------------------------------------------------------------"
echo $'\n'


echo $'\n##############################################'
echo "#    Instalando pip...                       #"
echo $'##############################################\n'

sudo apt install python-pip

echo $'\n##############################################'
echo "#    Instalando virtualenvwrapper...         #"
echo $'##############################################\n'

sudo pip install virtualenvwrapper

echo $'\n##############################################'
echo "#    Confiurando virtualenvwrapper...        #"
echo $'##############################################\n'

mkdir ~/.virtualenvs

echo "export WORKON_HOME=~/.virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc

# Necessario o comando abaixo para que as variaveis de ambiente do virtualenv sejam aplicadas a secao atual

exec bash

echo $'\n##############################################'
echo "#    Instalando PostgreSQL e pgAdmin3...     #"
echo $'##############################################\n'

sudo apt install postgresql postgresql-server-dev-10

sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"

read -p 'Deseja instalar o pgAdmin3? [s/n]' decisao

if [ $decisao == 'S' ] || [ $decisao == 'n' ]
then
  sudo apt install pgadmin3
fi

echo $'\n##############################################'
echo "#    Pronto, pode usar!                      #"
echo $'##############################################\n'
