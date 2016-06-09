#/bin/bash
set -e
cd hiperium-identity/
vagrant destroy -f
cd ../hiperium-device/
vagrant destroy -f
cd ../hiperium-logging/
vagrant destroy -f
cd ../hiperium-messaging/
vagrant destroy -f
echo "Destroyed all VM from all Domains."
