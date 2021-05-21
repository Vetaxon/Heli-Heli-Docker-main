# Использование

Наиболее часто используемые в разработке инструменты достпуны через Shell-скрипты
в директории [bin](../../bin).
Для их корректной работы следует запускать их из корневой директории репозитория,
например `bin/up` или `bin/php-bash`.

## Скрипты в директории `bin`
   * Docker-среда:
      * [up](../../bin/up): запуск среды в фоновом режиме - [docker-compose up](https://docs.docker.com/compose/reference/up/)
      * [up-not-detach](../../bin/up-not-detach): запуск среды - [docker-compose up](https://docs.docker.com/compose/reference/up/)
      * [stop](../../bin/stop): остановка среды без удаления контейнеров - [docker-compose stop](https://docs.docker.com/compose/reference/stop/)
      * [down](../../bin/down): остановка среды с удаленем контейнеров - [docker-compose down](https://docs.docker.com/compose/reference/down/)
      * [build](../../bin/build): пересборка среды - [docker-compose build](https://docs.docker.com/compose/reference/build/)
   * Bash-среда отдельных сервисов:
      * [node-bash](../../bin/node-bash)
      * [php-bash](../../bin/php-bash)
      * [mysql-bash](../../bin/mysql-bash)
      * [solr-bash](../../bin/solr-bash)

## Стандартный пример использования
1. Запуск Docker-среды: `bin/up`.
   
   Первый запуск может занять некоторое время, по причине скачивания
   нужных Docker-образов сервисов и создания и настройки контейнеров.

2. Работа с API и WEB проектами.

3. Остановка Docker-среды: `bin/stop`.

## Доступные компоненты
  * Доступные через браузер:
    * PHP-приложение: [http://localhost:PHP_APACHE_PORT](http://localhost:PHP_APACHE_PORT),
      где `PHP_APACHE_PORT` - значение из файла `.env`.
    * AngularJS-приложение: [http://localhost:NODE_GULP_PORT](http://localhost:NODE_GULP_PORT),
      где `NODE_GULP_PORT` - значение из файла `.env`.
    * Adminer: [http://localhost:ADMINER_PORT](http://localhost:ADMINER_PORT),
      где `ADMINER_PORT` - значение из файла `.env`.
  * Прочие сервисы:
    * MySQL:
      * Host: `mysql`
      * Port: MYSQL_PORT - значение из файла `.env`.
        * Root user:
          * Username: `root`
          * Password: MYSQL_ROOT_PASSWORD - значение из файла `.env`.
        * Non-root user:
          * Username: MYSQL_USER - значение из файла `.env`.
          * Password: MYSQL_PASSWORD - значение из файла `.env`.
          * Database: MYSQL_DATABASE - значение из файла `.env`.
    * Redis:
      * Host: `redis`
      * Port: REDIS_PORT - значение из файла `.env`.
    * Solr:
      * Host: `localhost`
      * Port: SOLR_PORT - значение из файла `.env`.