#!/bin/bash
set -e
sudo curl -fsSL https://get.docker.com/ | sh
sudo service docker start
sudo groupadd docker
sudo usermod -aG docker asolorzano
docker run hello-world
sudo chkconfig docker on
