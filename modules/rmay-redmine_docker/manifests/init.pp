# == Class: redmine_docker
#
# Full description of class redmine_docker here.
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
#  class { 'redmine_docker':
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
class rmay-redmine_docker {
  
  package { docker:
        ensure => present,
  }

  file { "/opt/redmine/data/plugins":
    ensure => "directory",
    source => 'puppet:///modules/rmay-redmine_docker/plugins',
    owner  => "rmay",
    group  => "rmay",
    mode   => 750,
    recurse => true,
  }

  file { "/opt/redmine/data/themes":
    ensure => "directory",
    source => 'puppet:///modules/rmay-redmine_docker/themes',
    owner  => "rmay",
    group  => "rmay",
    mode   => 750,
    recurse => true,
  }

  file { 'redmine_init.sh':
    name          => '/opt/redmine/redmine_init.sh',
    ensure        => present,
    source        => 'puppet:///modules/rmay-redmine_docker/redmine_init.sh',
    owner         => rmay,
    group         => rmay,
    mode          => 0700,
  }

  file { 'redmine.sh':
    name          => '/opt/redmine/redmine.sh',
    ensure        => present,
    source        => 'puppet:///modules/rmay-redmine_docker/redmine.sh',
    owner         => rmay,
    group         => rmay,
    mode          => 0700,
  }

  exec { 'redmine_docker update':
        command     => '/usr/bin/docker pull sameersbn/redmine:latest',
  }

  exec { 'redmine_docker run':
        command     => '/bin/bash /opt/redmine/redmine.sh',
  }
}
