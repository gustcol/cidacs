#!/bin/bash -xe
set -euxo pipefail
docker system prune --all --force

cd docker-elk
docker-compose down
#rm -rf data/elasticsearch/nodes

cd ../minio-docker
docker-compose down 
rm -rf  data/minio

cd ../spark-cluster-on-docker
docker-compose down

