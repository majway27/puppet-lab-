docker run --name=drupal -it -p 11080:80 \
  -e "DB_TYPE=mysql" -e "DB_HOST=10.0.2.16" -e "DB_NAME=docker_production" \
  -e "DB_USER=drupal" -e "DB_PASS=drupalpass" \
  -v /opt/drupal/data \
  majwaydrupal:latest
