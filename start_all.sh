#!/bin/bash -xe
set -euxo pipefail
docker system prune --all --force

cd elasticsearch-docker
docker-compose up -d

cd ../minio-docker
docker-compose up -d 

cd ../spark-cluster-on-docker
./build.sh
