FROM nginx:alpine
WORKDIR /var/www/bus

ADD certs/nginx-selfsigned.crt /etc/ssl/private/
ADD certs/nginx-selfsigned.key /etc/ssl/private/

CMD ["nginx"]
EXPOSE 80
