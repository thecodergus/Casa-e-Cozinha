FROM php:7.2-apache

# RUN apt-get update && \
#     apt-get install -y libxml2-dev \
#     libfreetype6-dev \
#     libjpeg62-turbo-dev \
#     libmcrypt-dev \
#     libpng-dev \
#     nano \
#     libmcrypt4 \
#     libcurl3-dev \
#     apt-utils \
#     gzip \
#     iputils-ping

# RUN pecl install mcrypt-1.0.1 && docker-php-ext-enable mcrypt
# RUN docker-php-ext-install soap gd mysqli pdo pdo_mysql zip
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-enable mysqli mysqli pdo pdo_mysql