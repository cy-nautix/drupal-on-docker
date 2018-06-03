#!/usr/bin/env bash

docker exec -it php composer install -d /var/www/your_site_name

if curl -L localhost:80 | grep -q "Drupal " ; then
  echo "Drupal has been successfully built up"
  exit 0
else
  echo "Drupal build failed"
  exit 1
fi