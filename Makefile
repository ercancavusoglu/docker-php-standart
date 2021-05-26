#!/bin/bash

CONTAINER_NAME = php
NETWORK_NAME = bus-proxy

start:
	docker network create ${NETWORK_NAME} || true
	cp -n .env.docker .env || true
	cp -n docker-compose.yml.dist docker-compose.yml || true
	docker-compose up -d

stop:
	docker-compose stop

restart:
	$(MAKE) stop && $(MAKE) start

prepare:
	$(MAKE) composer-install

composer-update:
	docker exec -it ${CONTAINER_NAME} composer update ${package}

cache-clear:
	docker exec -it ${CONTAINER_NAME} bin/console cache:clear

clear-var-log:
	docker exec -it ${CONTAINER_NAME} rm -rf var/log/*

composer-install:
	docker exec -it ${CONTAINER_NAME} composer install

migrations:
	docker exec -it ${CONTAINER_NAME} bin/console doctrine:migrations:migrate

log:
	docker exec -it ${CONTAINER_NAME} tail -f var/log/dev.log

bash:
	docker exec -it ${CONTAINER_NAME} /bin/ash

php:
	docker exec -it php /bin/ash

go:
	docker exec -it go /bin/ash

js:
	docker exec -it js /bin/ash

python:
	docker exec -it python /bin/ash

nginx:
	docker exec -it nginx /bin/ash

