#!/usr/bin/env bash

if [ $KEYCLOAK_USER ] && [ $KEYCLOAK_PASSWORD ]; then
    /opt/jboss/keycloak/bin/add-user-keycloak.sh -u $KEYCLOAK_USER -p $KEYCLOAK_PASSWORD >/dev/null
    /opt/jboss/keycloak/bin/add-user.sh -u $KEYCLOAK_USER -p $KEYCLOAK_PASSWORD >/dev/null
fi

exec /opt/jboss/keycloak/bin/standalone.sh $@
exit $?