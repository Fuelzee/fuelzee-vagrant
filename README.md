# Setup the Fuelzee-API Development Environment using Vagrant

1. Install VirtualBox https://www.virtualbox.org
2. Install Vagrant https://www.vagrantup.com

## Set box in Vagrantfile
config.vm.box = "ubuntu/xenial64"

## Steps
```cd fuelzee-vagrant
vagrant up
vagrant ssh
cd /vagrant/fuelzee-api
bundle install
```

_Finally, restore the most recent mLab backup then start the API with_
```./start.sh_
```
