class php {
  package { php: ensure => present, }
  package { php-gd: ensure => present, }
  package { php-mysql: ensure => present, }
  package { php-pear: ensure => present, }
  package { php-xml: ensure => present, }
  package { php-xmlrpc: ensure => present, }
  package { php-soap: ensure => present, }
  package { epel-release: ensure => present, }
  package { php-pdo: ensure => present, }
  package { php-mcrypt: ensure => present, }
  package { php-bcmath: ensure => present, }
  package { php-mbstring: ensure => present, }
  package { php-php-gettext: ensure => present, }
  package { php-tidy: ensure => present, }

  #exec { "setsebool httpd_connect_db 1":
  #exec { "setsebool httpd_can_network_connect 1":
  #chcon -t tmp_t uploads

}

