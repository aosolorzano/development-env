#!/bin/bash
# This script creates all libvirt network for all Hiperium Services

virsh net-define /root/development-env/hiperium-identity/network.xml
virsh net-autostart IdentityNetwork
virsh net-start IdentityNetwork
echo "Virtual Network created OK."
