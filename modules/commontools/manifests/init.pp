class commontools {
  package { telnet:
	ensure => present,
  }
  package { wget:
        ensure => present,
  }
  package { unzip:
        ensure => present,
  }
  package { net-tools:
        ensure => present,
  }
  package { mariadb:
        ensure => present,
  }

}
