class gitweb {
  package { gitweb:
	ensure => present,
  }

  file { 'gitweb.conf':
  notify	=> Service["httpd"],  
  name          => '/etc/gitweb.conf',
  ensure        => present,
  source        => '/media/sf_array/Library/Software/config/modules/gitweb/manifests/gitweb.conf',
  owner         => root,
  group         => root,
  mode          => 0644,
  require       => Package["gitweb"],
  }

  file { 'gitweb.cgi':
  notify        => Service["httpd"],
  name          => '/var/www/git/gitweb.cgi',
  ensure        => present,
  source        => '/media/sf_array/Library/Software/config/modules/gitweb/manifests/gitweb.cgi',
  owner         => root,
  group         => root,
  mode          => 0755,
  require       => Package["gitweb"],
  }


}

