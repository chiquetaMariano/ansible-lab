#!/usr/bin/env bash

# ANSIBLE
echo "Installing Ansible and setting it up..."
apt-get update >/dev/null 2>&1
apt-get install -y ansible >/dev/null 2>&1
apt-get install -y sshpass >/dev/null 2>&1

cd /vagrant
ansible testserver -i hosts -m ping