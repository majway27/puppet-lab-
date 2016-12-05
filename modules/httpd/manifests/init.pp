class httpd {
  package { httpd:
	ensure => present,
  }

  service { 'httpd':
        ensure => "running",
        enable => true,
  }

  file { 'httpd.conf':
    notify        => Service["httpd"],  
    name          => '/etc/httpd/conf/httpd.conf',
    ensure        => present,
    source        => '/media/sf_array/Library/Software/config/modules/httpd/manifests/httpd.conf',
    owner         => root,
    group         => root,
    mode          => 0644,
  }

  file { "/etc/httpd/ssl":
    ensure => "directory",
    owner  => "root",
    group  => "root",
    mode   => 750,
  }

  file { 'mayway.com.crt':
  notify        => Service["httpd"],
  name          => '/etc/httpd/ssl/mayway.com.crt',
  ensure        => present,
  source        => 'puppet:///modules/httpd/mayway.com.crt',
  owner         => root,
  group         => root,
  mode          => 0750,
  }

  file { 'mayway.com.key':
  notify        => Service["httpd"],
  name          => '/etc/httpd/ssl/mayway.com.key',
  ensure        => present,
  source        => '/media/sf_array/Library/Software/config/modules/httpd/manifests/mayway.com.key',
  owner         => root,
  group         => root,
  mode          => 0750,
  }

  file { 'ssl.conf':
  notify        => Service["httpd"],
  name          => '/etc/httpd/conf.d/ssl.conf',
  ensure        => present,
  source        => '/media/sf_array/Library/Software/config/modules/httpd/manifests/ssl.conf',
  owner         => root,
  group         => root,
  mode          => 0750,
  }
}
