#!/usr/bin/env bash

# -----------------------------------
#  Virtual Machine Setup
# -----------------------------------

# Disable swap for each vm
sudo swapoff -a

# Updating packages
apt-get update

# Installing Packages
apt-get install avahi-daemon libnss-mdns python-setuptools python python-pip curl -y
