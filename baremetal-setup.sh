#!/bin/bash
# Baremetal setup
sudo apt-get install terminator
apt-get remove firefox
sudo apt-get remove firefox

# SoftRaid
sudo apt-get install mdadm
mdadm --assemble --scan
cat /proc/mdstat 

# Firewall prep for virtualbox networking
sudo ufw disable
sudo ufw stop

# SSH
sudo apt-get install openssh-server -y
#sudo vi /etc/ssh/sshd_config 

sudo apt-get install alien dpkg-dev debhelper build-essential -y 
sudo apt-get install git -y

# Links
#cd ~
#ln -s scripts /mnt/array/Library/Software/scripts/
#ln -s /mnt/array/Library/Software/scripts scripts
#ln -s /mnt/array/Library/Software/scripts/rmay-bash_profile .bash_profile

# Puppet manifests centralized
# mkdir /mnt/array/Library/Software/config/manifests
# mkdir /mnt/array/Library/Software/config/modules
 
