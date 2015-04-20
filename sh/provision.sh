#!/usr/bin/env bash

if [ -e "/etc/vagrant-provisioned" ];
then
    echo "Vagrant provisioning already completed. Skipping..."
    exit 0
else
    echo "Starting Vagrant provisioning process..."
fi

# Change the hostname so we can easily identify what environment we're on:
echo "vagrant" > /etc/hostname
# Update /etc/hosts to match new hostname to avoid "Unable to resolve hostname" issue:
echo "127.0.0.1 vagrant" >> /etc/hosts
# Use hostname command so that the new hostname takes effect immediately without a restart:
hostname vagrant

# Install core components
/vagrant/sh/core.sh

# Install Node.js
/vagrant/sh/nodejs.sh

# Install MongoDB
/vagrant/sh/mongodb.sh

# Install Redis
/vagrant/sh/redis.sh

# GitHub repositories:
/vagrant/sh/github.sh

# Vim settings:
/vagrant/sh/vim.sh

touch /etc/vagrant-provisioned

echo "--------------------------------------------------"
echo "Your vagrant instance is running at: 192.168.33.10"
