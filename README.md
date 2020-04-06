## Configuração

Clone o projeto

```sh
$ git clone https://github.com/pedrohcrisanto/blu.git
```

Instale as dependências
```sh
$ cd /blu/
$ sudo docker-compose run --rm app bundle install
```

Crie o banco e migre as tabelas
```sh
$ sudo docker-compose run --rm app bundle exec rails db:create db:migrate 
```

Rode a aplicação em um terminal
```sh
$ sudo docker-compose up
```
