Author: Andres Solorzano
Level: Advanced
Technologies: Vagrant, Ansible, Docker, Docker Compose, Docker Swarm
Target Product: Hiperium Project

What is it?
This is an automated infrastructure project that creates all virtual machines includes its virtual networks, to allow the Hiperium Project Microservices runs on it.

System requirements
CentOS 7 or another RHEL 7 distribution with Virtualisation components installed on it.
This project uses Vagrant with libvirt plugin to install KVM virtual machines.

Start the process
You need to start the Linux scripts inside the parent folder of this project depending on your needs. Each scripts install and configure parts of the overall system.
