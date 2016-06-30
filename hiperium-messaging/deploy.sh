#!/bin/bash
set -e
vagrant destroy -f
vagrant up --provider=virtualbox --provision
vagrant ssh -c 'docker exec -it hiperium-messaging /opt/jboss/wildfly/bin/jboss-cli.sh --connect controller=127.0.0.1:9990 --file=/opt/jboss/wildfly/configure-jms.cli'
vagrant ssh -c 'docker exec -it hiperium-messaging /opt/jboss/wildfly/bin/jboss-cli.sh --connect controller=127.0.0.1:9990 --file=/opt/jboss/wildfly/install-standalone.cli'
vagrant ssh -c 'docker exec -it hiperium-messaging cp -f /opt/jboss/wildfly/hiperium-messaging.war /opt/jboss/wildfly/standalone/deployments/'
