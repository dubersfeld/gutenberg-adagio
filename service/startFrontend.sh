#!/bin/bash

docker run --name frontend-server -p 8080:8080 --network gutenberg \
-e "GUTENBERG_CONFIG_URI=http://config-server:8888" \
-e "CONFIGSERVER_HOST=config-server" \
-e "CONFIGSERVER_PORT=8888" \
-e "BOOKSERVER_HOST=book-service" \
-e "BOOKSERVER_PORT=8081" \
-e "USERSERVER_HOST=user-service" \
-e "USERSERVER_PORT=8084" \
-e "REVIEWSERVER_HOST=review-service" \
-e "REVIEWSERVER_PORT=8082" \
-e "ORDERSERVER_HOST=order-service" \
-e "ORDERSERVER_PORT=8083" \
gutenberg/frontend-server
