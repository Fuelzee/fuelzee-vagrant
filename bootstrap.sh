#!/usr/bin/env bash

apt-get update
apt-get install -y build-essential mongodb-server elasticsearch
curl -sSL https://get.rvm.io | bash -s stable --ruby
rvm install ruby-2.0.0-p598
gem install bundler
