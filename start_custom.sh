#!/bin/bash

# 1. Check Inputs
HOSTNAME=$1
IP=$2
EMAIL=$3

docker build -t nginx-redirect .
docker run -d \
--name ${HOSTNAME} \
-e REDIRECT_HOST=${HOSTNAME} \
-e REDIRECT_IP=${IP} \
-e VIRTUAL_HOST=${HOSTNAME} \
--network=webproxy \
nginx-redirect
docker exec ${HOSTNAME} /bin/bash /custom.sh
docker exec ${HOSTNAME} mv /custom.conf /etc/nginx/conf.d/

exit 0
