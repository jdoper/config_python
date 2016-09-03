# config_django
Lista de comandos para configuração básica de uma máquina para desenvolvimento de aplicações Django.</br>

***ANTES DE TUDO, ABRA O TERMINAL!!!***</br>

### Adicionando bibliotecas necessárias do Python

O pip é um instalador de bibliotecas Python, é muito útil para instalar as dependências do seu projeto.
Antes do pip, execute o comando abaixo para instalar duas dependências o python-dev e o python-setuptools.

```sh
sudo apt-get install python-dev python-setuptools
```

Ao executar o comando acima, o easy_install estará disponível, usando ele podemos instalar o pip.

```sh
sudo easy_install pip
```

Outra ferramenta muito útil é o virtualenv, ele é usado para criar ambientes de trabalho isolados, que vão lhe ajudar quando estiver trabalhando com projetos que utlizam diferentes versões da mesma biblioteca. Instale usando o comando abaixo.

```sh
sudo apt-get install python-virtualenv
```

</br>
### Instalando e configurando o banco de dados PostgreSQL

Com o comando abaixo, são instalados o postgres, gerenciador de banco de dados, e a ferramenta visual pgadmin3, para trabalhar com os bancos postgres em sua máquina.

```sh
sudo apt-get install postgresql pgadmin3
```

Agora vamos configurar a senha do usuário criado por padrão ao instalar o postgres, entre no postgres modo terminal com o comando abaixo.

```sh
sudo -u postgres psql
```

Agora altere a senha, se você não alterar a linha abaixo, a senha será 'postgres'.

```sh
ALTER USER postgres WITH PASSWORD 'postgres';
```

Caso a alteração seja bem sucedida, ira aparecer no terminal "ALTER ROLE", para sair desse modo execute.

```sh
\q
```

***Pronto!!!*** Sua máquina está pronta para desenvolver projetos com Django e PostgreSQL.
