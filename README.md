# Setup the Fuelzee-API Development Environment using Vagrant

1. Install VirtualBox. Via homebrew or official binary installer https://www.virtualbox.org
2. Install Vagrant. Via homebrew or official binary installer https://www.vagrantup.com

## 1. Before we go vagrant up, adjust your Vagrantfile accordingly
``config.vm.box = "ubuntu/xenial64"``

## 2. Setup Vagrant box
```bash
cd <fuelzee-vagrant-project-dir>
vagrant up
```

## 3. Setup VM requirements
At this point, it will set up the vm and set the local port 9292 at 127.0.0.1 of Mac is mapped to the 9292 port of the vm's IP address
Now you will connect to the VM

```bash
cd /vagrant
# here you can git clone git@github.com:Fuelzee/fuelzee_api.git /vagrant/fuelzee-api
# or a make local copy of fuelzee_api to <fuelzee-vagrant-project-dir> folder in your Mac
```

## 4. Restore most recent mLab backup at https://mlab.com/clusters/rs-ds043068#backups

## 5. Now set up the elasticsearch with fuelzee_api
```bash
$ REDISCLOUD_URL=localhost rake console
> Station.import # This may take long and the output is => 0
> Brand.import # output is => 0
```

## 6. Finally
``./start.sh``

For more info about how setting up fuelzee_api refer to https://github.com/fuelzee/fuelzee_api

Notes:
1. Edit source code on your Mac at ``<fuelzee-vagrant-project-dir>``
2. On your Mac browser, go to http://127.0.0.1:9292/v1/stations?lat=0.034930&lon=-51.058500&order=distance&radius=15000
3. When your Mac sleeps, your gets automatically suspended, so you’ll lose ssh connection. After your computer is wake up you can resume the vm with ‘vagrant resume’

# Troubleshooting
Sometimes you can lose access to the vm or it may say that the tcp port 9292 is already in use. In this case do this:
```bash
vagrant halt
vagrant up
vagrant ssh
cd /vagrant/fuelzee-api
./start.sh
```
