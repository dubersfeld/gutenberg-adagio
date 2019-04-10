#!/bin/bash
# for a better name consistence rename it startNode.sh

docker run -e "cluster.name=gutenberg-cluster" -e "bootstrap.memory_lock=true" \
--name gutenberg-elastic \
-p 9200:9200 \
-e "ES_JAVA_OPTS=-Xms512m -Xmx512m" \
--ulimit memlock=-1:-1 \
--volume "gutenberg:/usr/share/elasticsearch/data" \
--network gutenberg docker.elastic.co/elasticsearch/elasticsearch:6.6.1

