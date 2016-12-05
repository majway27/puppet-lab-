class php {
  package { php:
        ensure => present,
  }
}

class php-mysql {
  package { php:
        ensure => present,
  }
}

class mariadb-server {
  package { mariadb-server:
	ensure => present,
  }
}

class mariadb {
  package { mariadb:
        ensure => present,
  }

 service { 'mariadb':
	ensure => "running",
	enable => "true",
 }
}

class epel-release {
  package { epel-release:
        ensure => present,
  }
}

class phpmyadmin {
  package { phpmyadmin:
        ensure => present,
	require => Package["epel-release"],
	require => Package["httpd"],
  }
}
