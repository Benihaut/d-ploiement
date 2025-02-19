FROM php:8.2.20-fpm

# Installation des dépendances et extensions PHP
RUN apt-get update && apt-get install -y \
    libicu-dev \
    git \
    unzip \
    zip \
    libzip-dev \
    nginx \
    && docker-php-ext-install intl pdo pdo_mysql zip

# Copie de Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configuration de l'environnement pour Composer
ENV COMPOSER_ALLOW_SUPERUSER=1

# Installation de Symfony CLI
RUN curl -sS https://get.symfony.com/cli/installer | bash
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony

WORKDIR /var/www/symfony

# Copie des fichiers du projet
COPY . .

# Installation des dépendances avec Composer
RUN composer install --no-scripts --no-autoloader

# Génération de l'autoloader et exécution des scripts
RUN composer dump-autoload --optimize && composer run-script post-install-cmd

# Configuration de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Configuration de PHP-FPM
RUN sed -i 's/listen = \/run\/php\/php8.2-fpm.sock/listen = 9000/' /usr/local/etc/php-fpm.d/www.conf

EXPOSE 80

# Script de démarrage pour PHP-FPM et Nginx
COPY start.sh /start.sh
RUN chmod +x /start.sh
RUN mkdir -p /var/www/symfony/var/log
RUN chown -R www-data:www-data /var/www/symfony/var

CMD ["/start.sh"]

