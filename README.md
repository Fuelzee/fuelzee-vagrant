# Setup the Fuelzee-API Development Environment using Vagrant

1. Install VirtualBox https://www.virtualbox.org (binary OSX installer or via brew)
2. Install Vagrant https://www.vagrantup.com (binary OSX installer or via brew)

## Steps
```bash
cd fuelzee-vagrant
vagrant up
vagrant ssh
cd /vagrant
git clone git@github.com:Fuelzee/fuelzee_api.git
cd fuelzee_api
bundle install
```

_Finally, restore mongo backup then start the API with_
```bash
./start.sh
```
