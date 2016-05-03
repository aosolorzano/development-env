#!/bin/bash
# Deploy all virtual machines and the entire environment.
set -e
./install-vagrant.sh
./install-ansible.sh
./create-virtual-networks.sh
./create-virtual-machines.sh
