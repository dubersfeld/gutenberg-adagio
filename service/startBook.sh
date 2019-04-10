#!/bin/bash

docker run --name book-service -p 8081:8081 --network gutenberg \
-e "GUTENBERG_CONFIG_URI=http://config-server:8888" \
-e "CONFIGSERVER_HOST=config-server" \
-e "CONFIGSERVER_PORT=8888" \
-e "ELASTICSERVER_HOST=gutenberg-elastic" \
-e "ELASTICSERVER_PORT=9200" \
gutenberg/book-server
