#! /usr/bin/env bash

sed -i "s/^connection.*/connection = postgresql:\/\/keystone:keystone@$DB_PORT_5432_TCP_ADDR:$DB_PORT_5432_TCP_PORT\/keystone/" /etc/keystone/keystone.conf
# sed -i "s/^\#admin_token.*/admin_token=ADMIN_TOKEN/" /etc/keystone/keystone.conf
sed -i "s/^\#provider.*/provider=keystone.token.providers.uuid.Provider/" /etc/keystone/keystone.conf
keystone-manage db_sync
keystone-wsgi-public
