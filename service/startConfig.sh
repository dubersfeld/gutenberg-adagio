#!/bin/bash

#CONFIGREPO='/home/ubersfeld/Documents/gutenberg-allegro/config-repo'

docker run --name config-server -p 8888:8888 --mount type=bind,source="$CONFIGREPO",target="/tmp/config-repo" --network gutenberg \
-e "EUREKASERVER_URI=http://eurekaserver:8761/eureka/" \
-e "EUREKASERVER_HOST=eurekaserver" \
-e "EUREKASERVER_PORT=8761" \
gutenberg/config-server
