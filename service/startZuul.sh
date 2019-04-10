#!/bin/bash

docker run --name zuul-service -p 5555:5555 --network gutenberg \
-e "GUTENBERG_CONFIG_URI=http://config-server:8888" \
-e "CONFIGSERVER_HOST=config-server" \
-e "CONFIGSERVER_PORT=8888" \
gutenberg/zuul-server
