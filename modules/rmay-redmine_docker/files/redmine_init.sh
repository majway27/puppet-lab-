docker run --name=redmine -it --rm -p 10080:80 \
  -v /var/run/docker.sock:/run/docker.sock \
  -e "DB_TYPE=mysql" -e "DB_HOST=10.0.2.16" -e "DB_NAME=redmine_production" \
  -e "DB_USER=redmine" -e "DB_PASS=redminepass" \
  -v /opt/redmine/data:/home/redmine/data \
  sameersbn/redmine:latest
