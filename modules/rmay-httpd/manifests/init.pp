# == Class: httpd
#
# Full description of class httpd here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'httpd':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class rmay-httpd {

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
    source        => 'puppet:///modules/rmay-httpd/httpd.conf',
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
  name          => '/etc/httpd/ssl/majway.com.crt',
  ensure        => present,
  source        => 'puppet:///modules/rmay-httpd/majway.com.crt',
  owner         => root,
  group         => root,
  mode          => 0750,
  }

  file { 'mayway.com.key':
  notify        => Service["httpd"],
  name          => '/etc/httpd/ssl/majway.com.key',
  ensure        => present,
  source        => 'puppet:///modules/rmay-httpd/majway.com.key',
  owner         => root,
  group         => root,
  mode          => 0750,
  }

  file { 'php.conf':
  notify        => Service["httpd"],
  name          => '/etc/httpd/conf.d/php.conf',
  ensure        => present,
  source        => 'puppet:///modules/rmay-httpd/php.conf',
  owner         => root,
  group         => root,
  mode          => 0750,
  }

  file { 'welcome.conf':
  notify        => Service["httpd"],
  name          => '/etc/httpd/conf.d/welcome.conf',
  ensure        => present,
  source        => 'puppet:///modules/rmay-httpd/welcome.conf',
  owner         => root,
  group         => root,
  mode          => 0750,
  }

  file { 'wordpress.conf':
  notify        => Service["httpd"],
  name          => '/etc/httpd/conf.d/wordpress.conf',
  ensure        => present,
  source        => 'puppet:///modules/rmay-httpd/wordpress.conf',
  owner         => root,
  group         => root,
  mode          => 0750,
  }
  
  file { 'redmine.conf':
  notify        => Service["httpd"],
  name          => '/etc/httpd/conf.d/redmine.conf',
  ensure        => present,
  source        => 'puppet:///modules/rmay-httpd/redmine.conf',
  owner         => root,
  group         => root,
  mode          => 0750,
  }

  file { 'feed.conf':
  notify        => Service["httpd"],
  name          => '/etc/httpd/conf.d/feed.conf',
  ensure        => present,
  source        => 'puppet:///modules/rmay-httpd/feed.conf',
  owner         => root,
  group         => root,
  mode          => 0750,
  }

}

