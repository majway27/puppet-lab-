node 'util' {
  include commontools 
  include httpd
  include gitweb
}

node 'backend' {
  include commontools 
  include httpd
  include mariadb
}

node 'web' {
  include commontools 
  include rmay-httpd
  #include php
  include wordpress
  #include docker
  include rmay-redmine_docker
}

