#! /usr/bin/env bash

docker run -d --name=keystone -p 8000:8000 keystone

sleep 5

IDENTITY_ENDPOINT=http://localhost:8000

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "domain": {
#    "decription": "OpenStack deployer domain",
#    "name": "deployer"
#  }
#}' $IDENTITY_ENDPOINT/v3/domains

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "project": {
#    "description": "OpenStack services",
#    "name": "service",
#    "domain_id": "eb5b1900a1514e44addff337e63099c4"
#  }
#}' $IDENTITY_ENDPOINT/v3/projects

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "user": {
#    "default_project_id": "4f68b1b9742f4c2aad15b85d18f90977",
#    "domain_id": "eb5b1900a1514e44addff337e63099c4",
#    "name": "keystone",
#    "password": "keystone"
#  }
#}' $IDENTITY_ENDPOINT/v3/users

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "user": {
#    "default_project_id": "4f68b1b9742f4c2aad15b85d18f90977",
#    "domain_id": "eb5b1900a1514e44addff337e63099c4",
#    "name": "barbican",
#    "password": "barbican"
#  }
#}' http://localhost:5000/v3/users

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "role": {
#    "name": "admin"
#  }
#}' http://localhost:5000/v3/roles

# Assign admin to keystone on service
#curl -X PUT -H 'X-Auth-Token:ADMIN_TOKEN' http://localhost:5000/v3/projects/4f68b1b9742f4c2aad15b85d18f90977/users/d957bd691f974ef3a8f6f9e11fcc2b67/roles/acc4cee2311c494f8d7cb2ec72bbdf35

# Assign admin to barbican on service
#curl -X PUT -H 'X-Auth-Token:ADMIN_TOKEN' http://localhost:5000/v3/projects/4f68b1b9742f4c2aad15b85d18f90977/users/a7503eea30134927a56f3f143047d2ed/roles/acc4cee2311c494f8d7cb2ec72bbdf35

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "region": {
#    "description": "San Antonio, TX",
#    "id": "SAT"
#  }
#}' $IDENTITY_ENDPOINT/v3/regions

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "service": {
#    "type": "identity",
#    "name": "keystone",
#    "description": "Keystone Identity Service"
#  }
#}' $IDENTITY_ENDPOINT/v3/services

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "service": {
#    "type": "key-manager",
#    "name": "barbican",
#    "description": "Barbican Key Manager Service"
#  }
#}' $IDENTITY_ENDPOINT/v3/services

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "endpoint": {
#    "interface": "public",
#    "region_id": "SAT",
#    "url": "http://localhost:5000/v3",
#    "service_id": "d0dddb2e3b29488a8ae6eb62bfa16a68"
#  }
#}' $IDENTITY_ENDPOINT/v3/endpoints

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "endpoint": {
#    "interface": "admin",
#    "region_id": "SAT",
#    "url": "http://localhost:5000/v3",
#    "service_id": "d0dddb2e3b29488a8ae6eb62bfa16a68"
#  }
#}' $IDENTITY_ENDPOINT/v3/endpoints

#curl -X POST -H 'X-Auth-Token:ADMIN_TOKEN' \
#  -H 'Content-Type:application/json' -d '{
#  "endpoint": {
#    "interface": "public",
#    "region_id": "SAT",
#    "url": "http://localhost:9311",
#    "service_id": "3c927d1b8bde48dbb635f73ae418de91"
#  }
#}' $IDENTITY_ENDPOINT/v3/endpoints


