#!/bin/bash

echo "Creating Hiperium Identity Virtual Machines..."
cd hiperium-identity/
vagrant up --provider=libvirt --provision --no-parallel
