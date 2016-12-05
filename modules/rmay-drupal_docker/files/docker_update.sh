#/bin/bash
echo commit && date
docker commit drupal majwaydrupal
echo FS write && date
docker save majwaydrupal > /tmp/majwaydrupal.tar
echo complete && date
