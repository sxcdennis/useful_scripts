#!/usr/bin/env bash
# install ansible
apt-get -y install software-properties-common
apt-add-repository -y ppa:ansible/ansible
apt-get update
apt-get -y install ansible

# copy examples into /home/vagrant (from inside the mgmt node)
#cp -a /vagrant/examples/* /home/vagrant
#chown -R vagrant:vagrant /home/vagrant

# configure hosts file for our internal network defined by Vagrantfile
cat >> /etc/hosts <<EOL
# vagrant environment nodes
192.168.10.10  mgmt
192.168.10.11  lb
192.168.10.21  web1
192.168.10.22  web2
192.168.10.23  web3
192.168.10.24  web4
EOL
