#!/bin/bash

# Démarrage de PHP-FPM
php-fpm &

# Démarrage de Nginx
nginx -g "daemon off;" &

# Attente infinie pour garder le conteneur en cours d'exécution
wait

