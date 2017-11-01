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
