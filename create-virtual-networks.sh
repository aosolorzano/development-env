#!/bin/bash
# This script creates all libvirt network for all Hiperium Services
set -e
sudo virsh net-define hiperium-identity/network.xml
sudo virsh net-autostart HiperiumIdentity
sudo virsh net-start HiperiumIdentity
echo "Virtual Networks created OK."
