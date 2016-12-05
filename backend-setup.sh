#!/bin/bash
# Backend setup

# Firewall prep for virtualbox networking
#systemctl enable firewalld
#systemctl status firewalld
#systemctl unmask firewalld
#systemctl start firewalld
#firewall-cmd --zone=public --list-all
#firewall-cmd --permanent --zone=public --add-service=http
#firewall-cmd --permanent --zone=public --add-service=https
#firewall-cmd --permanent --zone=public --add-service=mysql
#firewall-cmd --zone=public --add-port=8139/tcp --permanent
#firewall-cmd --reload
#firewall-cmd --list-services

#ssh root@192.168.120.70 -p 2215 'echo 10.0.2.15 web >> /etc/hosts'
#ssh root@192.168.120.70 -p 2215 'echo 10.0.2.16 backend >> /etc/hosts'
#ssh root@192.168.120.70 -p 2215 'echo 10.0.2.17 util >> /etc/hosts'
#ssh root@192.168.120.70 -p 2215 'echo 10.0.2.17 puppet >> /etc/hosts'

#ssh root@192.168.120.70 -p 2216 'rpm -ivh http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm'
#ssh root@192.168.120.70 -p 2216 'yum update'
#ssh root@192.168.120.70 -p 2216 'yum repolist | grep puppet'
#ssh root@192.168.120.70 -p 2216 'yes | yum -y install puppet'
#ssh root@192.168.120.70 -p 2216 'yum -y install puppet'
#ssh root@192.168.120.70 -p 2216 'puppet --version'
#ssh root@192.168.120.70 -p 2216 'chkconfig puppet on'
#ssh root@192.168.120.70 -p 2216 'service puppet start'

if ! (ssh root@192.168.120.70 -p 2216 '[ -d /etc/puppet/manifests ]'); then (ssh root@192.168.120.70 -p 2216 'mkdir /etc/puppet/manifests') fi;

# puppet client setup
#ssh root@192.168.120.70 -p 2216 'puppet agent --test'
# post signing on master
#ssh root@192.168.120.70 -p 2216 'puppet agent --test'


echo "Backend Success" 
