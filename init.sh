#!/bin/sh
file="./.env"
if [ -f $file ]; then
    rm $file
fi
read -p 'MONGODB_PRIMARY_HOSTNAME: ' passvar
echo MONGODB_PRIMARY_HOSTNAME=$passvar >>.env
read -p 'MONGODB_SECONDARY_HOSTNAME: ' passvar
echo MONGODB_SECONDARY_HOSTNAME=$passvar >>.env
read -p 'MONGODB_ARBITER_HOSTNAME: ' passvar
echo MONGODB_ARBITER_HOSTNAME=$passvar >>.env
read -sp 'MONGODB_ROOT_PASSWORD: ' passvar
echo ""
echo MONGODB_ROOT_PASSWORD=$passvar >>.env
read -sp 'MONGODB_PASSWORD: ' passvar
echo ""
echo MONGODB_PASSWORD=$passvar >>.env
read -sp 'MONGODB_REPLICA_SET_KEY: ' passvar
echo MONGODB_REPLICA_SET_KEY=$passvar >>.env

echo MONGODB_REPLICA_SET_NAME=razrnodes >>.env
echo MONGODB_USERNAME=razrdbuser >>.env
echo MONGODB_DATABASE=razrdb >>.env

echo "Done creating .env file..."
