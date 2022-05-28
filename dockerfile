FROM php:7.4-apache
FROM ubuntu:20.04
LABEL description="Actividad 1.3"
COPY /src /var/www/html
RUN apt update
RUN apt upgrade -y
RUN apt install -y php-fpm
RUN apt install sqlite3
RUN apt install -y php-sqlite3
RUN apt install -y apache2
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
