#!/bin/bash
# Deploy all Hiperium Project Domains
set -e
cd hiperium-identity/
vagrant up --provider=virtualbox --provision --no-parallel
cd ../hiperium-device/
vagrant up --provider=virtualbox --provision --no-parallel
cd ../hiperium-logging/
vagrant up --provider=virtualbox --provision --no-parallel
cd ../hiperium-messaging/
./deploy.sh
echo "Deployed all Hiperium Project Domains."
