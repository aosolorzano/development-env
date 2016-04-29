#!/bin/bash
# Deploy all virtual machines and the entire environment.
./install-vagrant.sh
./create-virtual-networks.sh
./create-virtual-machines.sh
