ARG PHP_VERSION
FROM php:${PHP_VERSION}

ARG UID
ENV UID ${UID}
ARG GID
ENV GID ${GID}

RUN usermod -u ${UID} -m -d /home/www-data www-data \
    && chown -R ${UID}:${GID} /home/www-data \
    && groupmod -g ${GID} www-data

RUN apt-get update && apt-get install -y \
        libicu-dev \
        libzip-dev \
        zip \
        unzip \
        cron \
        nano \
    && docker-php-ext-configure intl \
    && docker-php-ext-configure zip --with-libzip \
    && docker-php-ext-install intl mysqli pdo pdo_mysql zip \
    && rm -rf /var/lib/apt/lists/*

RUN a2enmod headers

RUN a2enmod rewrite

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && mkdir /var/www/.composer && chown -R www-data:www-data /var/www/.composer

COPY --chown=${UID}:${GID} cron/crontab /home/www-data/cron/
RUN crontab -u www-data /home/www-data/cron/crontab
