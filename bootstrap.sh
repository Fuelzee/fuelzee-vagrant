#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential mongodb-server elasticsearch
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /etc/profile.d/rvm.sh
rvm install ruby-2.0.0-p598
gem install bundler
sudo sed -i 's/#START_DAEMON/START_DAEMON/' /etc/default/elasticsearch
sudo systemctl restart elasticsearch
