#!/bin/bash

echo "* Install Ansible"
sudo dnf install epel-release -y -y
sudo dnf install ansible -y

echo "Install Nano"
sudo dnf install nano -y

