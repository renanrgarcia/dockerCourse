FROM php:8-apache

WORKDIR /var/www/html/

COPY . .

EXPOSE 80

# chown -R (change owner and group to <user>:<group> to access the files in <path>)
RUN chown -R www-data:www-data /var/www

RUN chown -R 777 /var/www/html/