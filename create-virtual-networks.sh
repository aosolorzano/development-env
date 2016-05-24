#!/bin/bash
# This script creates all network interfaces for Hiperium Project Domains.
set -e
echo "Create Hiperium Identity Virtual Network"
VBoxManage hostonlyif create
VBoxManage hostonlyif ipconfig "vboxnet1" --ip 172.16.76.0 --netmask 255.255.255.240

echo "Create Hiperium Device Virtual Network"
VBoxManage hostonlyif create
VBoxManage hostonlyif ipconfig "vboxnet2" --ip 172.16.76.16 --netmask 255.255.255.240

echo "Create Hiperium Logging Virtual Network"
VBoxManage hostonlyif create
VBoxManage hostonlyif ipconfig "vboxnet3" --ip 172.16.76.32 --netmask 255.255.255.240

echo "Create Hiperium Messaging Virtual Network"
VBoxManage hostonlyif create
VBoxManage hostonlyif ipconfig "vboxnet4" --ip 172.16.76.48 --netmask 255.255.255.240
