#!/bin/bash -xe
set -euxo pipefail
docker system prune --all --force

cd docker-elk
docker-compose up -d

cd ../minio-docker
docker-compose up -d 

cd ../spark-cluster-on-docker-jupyterlab
./build.sh
