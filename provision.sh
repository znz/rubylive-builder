#!/bin/sh
set -ex
cp /vagrant/sources.list /etc/apt/
apt-get update
DEBIAN_FRONTEND=noninteractive apt-get install -y git live-build rake
