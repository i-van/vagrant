#!/bin/bash

# colorize
sed -i 's/#force_color_prompt=yes/force_color_prompt=yes/g' /home/vagrant/.bashrc

# locale
echo 'export LANGUAGE=en_US.UTF-8' >> /home/vagrant/.bashrc
echo 'export LANG=en_US.UTF-8' >> /home/vagrant/.bashrc
echo 'export LC_ALL=en_US.UTF-8' >> /home/vagrant/.bashrc
locale-gen UTF-8

apt-get update
# Install build tools
apt-get install -y make g++ git curl vim libcairo2-dev libav-tools nfs-common portmap
apt-get install -y build-essential libssl-dev mc htop
