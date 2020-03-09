ARG PHP_VERSION=7.4

FROM php:${PHP_VERSION}-alpine

RUN apk add --no-cache git make

RUN ln -s $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_HOME /composer
ENV PATH "$PATH:/composer/vendor/bin"

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN set -eux; \
    composer global require "symfony/flex" --prefer-dist --no-progress --no-suggest --classmap-authoritative; \
    composer clear-cache

WORKDIR /app
