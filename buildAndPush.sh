#!/bin/bash -x
set -e

DATETIME=$(date +"%Y%m%d%H%M%S")

docker login -u -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASS
cd nordri-dev-tools
docker build -t nordri-dev-tools .
docker tag nordri-dev-tools nordri/nordri-dev-tools:latest
docker tag nordri-dev-tools nordri/nordri-dev-tools:$DATETIME
docker push nordri/nordri-dev-tools:latest
docker push nordri/nordri-dev-tools:$DATETIME
docker logout
