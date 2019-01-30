#!/usr/bin/env bash
# Envrioment is config.vm.box = "ubuntu/trusty64"
# config.vm.network "forwarded_port", guest: 80, host: 8080
# config.vm.provision :shell, path: "bootstrap.sh"
# This Bootstrap will use ubuntu and install apache using also add a html file

# update & install
apt-get update
apt-get install -y apache2

# point /var/www at /vagrant mount
if ! [ -L /var/www ]; then
  rm -rf /var/www
  ln -fs /vagrant /var/www
fi

# restart apache
/etc/init.d/apache2 restart
