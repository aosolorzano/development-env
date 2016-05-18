#!/bin/bash
set -e
echo "Creating Hiperium Identity Virtual Machines..."
cd hiperium-identity/
vagrant up --provider=virtualbox --provision --no-parallel
