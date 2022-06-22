FROM php:8.0-fpm AS php

WORKDIR /var/www/html

MAINTAINER TyTV <tytv@miichisoft.com>
LABEL maintainer="tytv@miichisoft.com"

RUN docker-php-ext-install mysqli
RUN docker-php-ext-install pdo_mysql

# Install ext-zip
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev
RUN docker-php-ext-install zip

# Create a group and user
RUN useradd -u 0177 tytv
USER tytv
