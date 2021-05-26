# Установка

1. Склонировать или скачать [репозиторий](https://github.com/andrejgolikov/Heli-Heli-Docker).

   Для примера условимся считать, что клонируем в диреторию `/home/user/heli`:
   ```
   cd /home/user/heli
   git clone git@github.com:andrejgolikov/Heli-Heli-Docker.git
   ```
2. Создать конфигурационный `.env` файл.

   Перейти в корневую директорию репозитория и скопировать файл
   [.env.example](../../.env.example) в файл с именем `.env`:
   ```
   cd Heli-Heli-Docker
   cp .env.example .env
   ```
3. Отредактировать конфигурационный файл `.env`.
   * Установить пути к корневым директориям API и WEB проектов в переменных
   `API_APP_CODE_PATH_HOST` и `WEB_APP_CODE_PATH_HOST`.
   Допустимо использование как абсолютных так и относительных путей.
   * Установить идентификаторы пользователя и группы, которые будут использованы
   в качестве пользователя-владельца файлов, создаваемых приложениями,
   в переменных `UID` и `GID`.
   
   * Отредактировать остальные переменные при необходимости.
   
4. Важно!!! Выполнить инструкции Heli-Heli-Docker-main/php/.htaccess

5. Положить дамп базы dump.sql в Heli-Heli-Docker-main/mysql/dump

6. Вставить Heli-Heli-API/config/app.php и Heli-Heli-API/config/site_keys.php

7. Вставить Heli-Heli-Web/app/scripts/app.constant.js, Heli-Heli-Web/app/api, Heli-Heli-Web/app/bower_components, Heli-Heli-Web/app/bower_components.backup

8. Изменить в Heli-Heli-Web/app/scripts/app.constant.js ('REQUEST_URL', 'http://localhost:8088/v1/')
