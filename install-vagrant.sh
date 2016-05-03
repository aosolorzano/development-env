#!/bin/bash
# Install all needed dependencies to setup all environment
set -e
echo "Installing Vagrant and plugins..."
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.rpm
sudo yum localinstall vagrant_1.8.1_x86_64.rpm
sudo yum -y install libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c ruby-devel
vagrant plugin install vagrant-cachier
vagrant plugin install vagrant-libvirt
echo "Add Vagrant box - CentOS 7"
vagrant box add centos7 http://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7-x86_64-Vagrant-1603_01.LibVirt.box
