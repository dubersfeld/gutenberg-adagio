#!/bin/bash

docker run --name user-service -p 8084:8084 --network gutenberg \
-e "GUTENBERG_CONFIG_URI=http://config-server:8888" \
-e "CONFIGSERVER_HOST=config-server" \
-e "CONFIGSERVER_PORT=8888" \
-e "ELASTICSERVER_HOST=gutenberg-elastic" \
-e "ELASTICSERVER_PORT=9200" \
gutenberg/user-server
