#!/bin/sh
set -ex
cp /vagrant/sources.list /etc/apt/
apt-get update
apt-get install -y apt-cacher-ng
echo 'Acquire::http::Proxy "http://localhost:3142/";' >/etc/apt/apt.conf.d/02proxy
DEBIAN_FRONTEND=noninteractive apt-get install -y git live-build rake
