#!/bin/bash
# Util setup

# Firewall prep for virtualbox networking
#systemctl enable firewalld
#systemctl status firewalld
#systemctl unmask firewalld
#systemctl start firewalld
#firewall-cmd --zone=public --list-all
#firewall-cmd --permanent --zone=public --add-service=http
#firewall-cmd --permanent --zone=public --add-service=https
#firewall-cmd --zone=public --add-port=8139/tcp --permanent
#firewall-cmd --zone=public --add-port=8140/tcp --permanent
#firewall-cmd --reload
#firewall-cmd --list-services

#ssh root@192.168.120.70 -p 2217 'echo 10.0.2.15 web >> /etc/hosts'
#ssh root@192.168.120.70 -p 2217 'echo 10.0.2.16 backend >> /etc/hosts'
#ssh root@192.168.120.70 -p 2217 'echo 10.0.2.17 util >> /etc/hosts'
#ssh root@192.168.120.70 -p 2217 'echo 10.0.2.17 puppet >> /etc/hosts'

#ssh root@192.168.120.70 -p 2217 'rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm'
#ssh root@192.168.120.70 -p 2217 'yum update'
#ssh root@192.168.120.70 -p 2217 'yum repolist | grep puppet'
#ssh root@192.168.120.70 -p 2217 'yes | yum -y install puppet'
#ssh root@192.168.120.70 -p 2217 'yum -y install puppet-server'
#ssh root@192.168.120.70 -p 2217 'yum -y install puppet'
#ssh root@192.168.120.70 -p 2217 'puppet --version'
#ssh root@192.168.120.70 -p 2217 'chkconfig puppet on'
#ssh root@192.168.120.70 -p 2217 'service puppet start'

#if ! (ssh root@192.168.120.70 -p 2217 '[ -d /etc/puppet/manifests ]'); then (ssh root@192.168.120.70 -p 2217 'mkdir /etc/puppet/manifests') fi;
# Point manifests
#ssh root@192.168.120.70 -p 2217 'mkdir -p /etc/puppet/environment/production'
#ssh root@192.168.120.70 -p 2217 'ln -s /media/sf_array/Library/Software/config/manifests /etc/puppet/environment/production/manifests'
#ssh root@192.168.120.70 -p 2217 'ln -s /media/sf_array/Library/Software/config/modules /etc/puppet/environment/production/modules'

#ssh root@192.168.120.70 -p 2217 'yum install -y puppet-server'
# bring over conf with dns_alt
#ssh root@192.168.120.70 -p 2217 'cp /media/sf_array/Library/Software/config/util/puppet.conf /etc/puppet/'

# local action - run and kill to gen certs
#puppet master --verbose --no-daemonize
# run

#ssh root@192.168.120.70 -p 2217 'chkconfig puppetmaster on'
#ssh root@192.168.120.70 -p 2217 'service puppetmaster start'

# puppet client setup
#ssh root@192.168.120.70 -p 2217 'puppet agent --test'

# master cert acceptance
#ssh root@192.168.120.70 -p 2217 'puppet cert list'
#ssh root@192.168.120.70 -p 2217 'puppet cert sign web'
#ssh root@192.168.120.70 -p 2217 'puppet cert sign backend'
#ssh root@192.168.120.70 -p 2217 'usermod -aG vboxsf puppet'
#ssh root@192.168.120.70 -p 2217 'usermod -aG vboxsf apache'


echo "Util Success"
