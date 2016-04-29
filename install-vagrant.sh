#!/bin/bash
# Install all needed dependencies to setup all environment

yum -y update
echo "Installing Vagrant and plugins..."
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.rpm
rpm -ivh vagrant_1.8.1_x86_64.rpm
vagrant --version
# Install Vagrant libvirt plugin.
yum -y install libxslt-devel libxml2-devel libvirt-devel libguestfs-tools-c ruby-devel
vagrant plugin install vagrant-libvirt
# Vagrant needs to know that we want to use Libvirt and not default VirtualBox.
export VAGRANT_DEFAULT_PROVIDER=libvirt
# install Vagrang cahche plugin.
vagrant plugin install vagrant-cachier
vagrant plugin install vagrant-rekey-ssh
vagrant plugin install mutate
# Download centos 7 box compatible with KVM
vagrant box add centos7 http://cloud.centos.org/centos/7/vagrant/x86_64/images/CentOS-7.LibVirt.box
