#!/bin/bash
set -e
echo "Installing Ansible..."
apt-get install -y software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get install -y ansible
cp -f /vagrant/ansible/ansible.cfg /etc/ansible/ansible.cfg
