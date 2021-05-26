FROM php:7.2-fpm-alpine

RUN apk update

RUN apk add --no-cache $PHPIZE_DEPS git openssh nano vim gmp-dev zlib-dev libmemcached-dev libmcrypt-dev rabbitmq-c-dev icu-dev libxml2-dev nano vim htop supervisor

RUN pecl install mongodb memcached amqp mcrypt-snapshot
RUN echo extension=mongodb.so >> /usr/local/etc/php/conf.d/mongodb.ini
RUN echo extension=memcached.so >> /usr/local/etc/php/conf.d/memcached.ini
RUN echo extension=amqp.so >> /usr/local/etc/php/conf.d/amqp.ini
RUN echo extension=mcrypt.so >> /usr/local/etc/php/conf.d/mcrypt.ini

RUN docker-php-ext-install intl bcmath pdo_mysql opcache zip soap gmp sockets opcache

RUN apk add --update --virtual build_deps gcc g++ autoconf make &&\
  docker-php-source extract

#RUN echo 'memory_limit = 512M' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini;
#RUN echo 'memory_limit = -1' >> /usr/local/etc/php/conf.d/docker-php-memlimit.ini;
COPY custom.ini /usr/local/etc/php/conf.d/custom.ini
COPY opcache.ini /usr/local/etc/php/conf.d/opcache.ini

ARG WITH_XDEBUG=false

RUN if [ $WITH_XDEBUG = "true" ] ; then \
        pecl install xdebug; \
        docker-php-ext-enable xdebug; \
    fi ;

COPY supervisor/supervisord.conf /etc/supervisord.conf
RUN mkdir -p /var/log/supervisor

RUN curl -sL https://getcomposer.org/installer | php -- --install-dir /usr/bin --filename composer

COPY --from=composer /usr/bin/composer /usr/bin/composer

#For parallel installs
#RUN composer global require hirak/prestissimo

WORKDIR /var/www/bus
#CMD composer install ; wait-for-it database:3306 -- bin/console doctrine:migrations:migrate ;  php-fpm
#CMD ["supervisord", "-c", "/etc/supervisord.conf"]
CMD php-fpm ; supervisord -c /etc/supervisord.conf
EXPOSE 9000
