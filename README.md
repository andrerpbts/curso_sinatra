# Curso Sinatra
API RESTful com Sinatra para Workshop Claretiano Nov/2017

## Como usar?

Este repositório foi construído na ordem Pull Requests enviados. Você pode observar o que cada pull request modificou, dentro do github.

### Hello World - Com Rack e Sinatra APP

#### Instalando

```console
$ gem install bundler
```

E no diretório principal da aplicação

```console
$ bundle install
```

#### Configurando

Os comandos rake disponíveis você pode ver rodando

```console
$ bundle exec rake -T
```

Para criar a base

```console
$ rake db:create
```

Para criar migrations

```console
$ bundle exec rake db:create_migration NAME=create_cars
```

Para rodar migrate

```console
$ rake db:migrate
```

#### Executando

Garanta que todas as gems necessárias estão instaladas

```console
$ bundle install
```

Rode o servidor

```console
$ puma -p 4567
```

E acesse a página http://localhost:4567/ no seu navegador

Se quiser acessar o console

```console
$ bin/console
```

HINT: Certifique-se de dar um `chmod +x bin/console` para que ele seja executável.

#### Rotas disponíveis

##### GET /cars

Traz todos os carros cadastrados

```console
$ curl localhost:9292/cars -H 'Authorization: Token token=secret'
-> [{"id":1,"brand":"FIAT","model":"Uno Economy 2p Flex","year":2008,"price":"12000.0"},{"id":2,"brand":"VW","model":"1.6 MI POWER TOTAL FLEX 8V 4P","year":2008,"price":"19023.0"}]
```

Ou, filtrando por marca

```console
$ curl localhost:9292/cars?brand=FIAT -H 'Authorization: Token token=secret'
-> [{"id":1,"brand":"FIAT","model":"Uno Economy 2p Flex","year":2008,"price":"12000.0"}]
```

##### GET /cars/:id

Traz o carro pelo id passado na url

```console
$ curl localhost:9292/cars/1 -H 'Authorization: Token token=secret'
-> {"id":1,"brand":"FIAT","model":"Uno Economy 2p Flex","year":2008,"price":"12000.0"}
```

##### POST /cars

Cria um carro

```console
$ curl -X POST localhost:9292/cars -H 'Authorization: Token token=secret' -d 'brand=VW' -d 'model=1.6 MI POWER TOTAL FLEX 8V 4P' -d 'year=2008' -d 'price=19023'
-> {"id":2,"brand":"VW","model":"1.6 MI POWER TOTAL FLEX 8V 4P","year":2008,"price":"19023.0"}
```

##### PUT /cars/:id

Atualiza o preço de um carro

```console
$ curl -X PUT localhost:9292/cars/1 -H 'Authorization: Token token=secret' -d 'price=19022'
-> {"id":1,"price":"19022.0","brand":"FIAT","model":"Uno Economy 2p Flex","year":2008}
```

##### DELETE /cars/:id

Remove um carro

```
$ curl -X DELETE localhost:9292/cars/3 -H 'Authorization: Token token=secret'
-> ""
```
