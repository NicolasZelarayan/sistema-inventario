# Usa la imagen oficial de PHP con Apache
FROM php:7.4-apache

# Habilita Apache mod_rewrite
RUN a2enmod rewrite

# Instala las extensiones de PDO y PDO MySQL
RUN docker-php-ext-install pdo pdo_mysql

# Copia tu código fuente al contenedor
COPY ./ /var/www/html/

# Asigna permisos al directorio de Apache
RUN chown -R www-data:www-data /var/www/html

# Expone el puerto 80 para el servidor web
EXPOSE 80