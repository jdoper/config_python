# config_django
Lista de comandos para configuração básica de uma máquina para desenvolvimento de aplicações Django e PostgreSQL.

**ANTES DE TUDO, ABRA O TERMINAL!!!**

***

Caso deseje poupar tempo, basta utilizar o arquivo **execute.sh** dentro desse repositório, para executar todas os comandos listados abaixo.

***

### Adicionando bibliotecas necessárias do Python

O pip é um instalador de bibliotecas Python, é muito útil para instalar as dependências do seu projeto, instale executando o comando abaixo.

```sh
sudo apt install python-pip
sudo apt install python3-distutils
```

Outra ferramenta muito útil é o virtualenvwrapper, usado para criar ambientes que vão lhe ajudar quando estiver trabalhando com projetos que utilizam diferentes versões da mesma biblioteca.

```sh
sudo pip install virtualenvwrapper
```

Agora é necessário realizar algumas configurações para que o virtualenvwrapper funcione corretamente, crie um novo diretório em sua home. Ele será usado para guardar os ambientes criados.

```sh
mkdir ~/.virtualenvs
```

Abra seu arquivo ~/.bashrc. Caso você utilize o ZSH, abra o arquivo "~/.zshrc".

```sh
gedit ~/.bashrc
```

Adicione as linhas abaixo no final do arquivo que foi aberto com o comando anterior.

```sh
export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
```

Por último atualize o terminal.

```sh
exec bash
```


### Instalando e configurando o banco de dados PostgreSQL

Com o comando abaixo, são instalados o postgres, gerenciador de banco de dados, e a ferramenta visual pgadmin3, para trabalhar com os bancos postgres em sua máquina.

```sh
sudo apt install postgresql postgresql-server-dev-10 pgadmin3
```

Agora vamos configurar a senha do usuário criado por padrão ao instalar o postgres,  se você não alterar a linha abaixo, a senha será 'postgres'.

```sh
sudo -u postgres psql -c "ALTER USER postgres> PASSWORD 'postgres';"
```

##### Pronto!!! Sua máquina está pronta para desenvolver projetos com Django e PostgreSQL.

***

### Utilização da virtualenv

Para criar uma nova virtualenv com Python 2, execute o comando abaixo.

```sh
mkvirtualenv <nome da virtualenv>
```

Caso deseje criar uma virtualenv com Python 3, adicione o parametro mostrado.

```sh
mkvirtualenv --python=/usr/bin/python3 <nome da virtualenv>
```
