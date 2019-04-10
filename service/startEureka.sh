#!/bin/bash

docker run --name eurekaserver -p 8761:8761 --network gutenberg gutenberg/eureka-service
