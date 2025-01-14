# <APP NAME>

## Подготовка приложения

Запускаем миграции:
```
bundle rake db:migrate
```

## Как запустить API

```
bundle exec rackup config.ru
```

## Как запустить кафка консьюмер

Запустить docker compose с кафкой, после вызвать:

```
bundle exec karafka server
```
