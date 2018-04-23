#!/bin/bash -x
set -e

docker login -u $DOCKERHUB_USERNAME -p $DOCKERHUB_PASS
cd nordri-dev-tools
docker build -t nordri-dev-tools .
docker tag nordri-dev-tools nordri/nordri-dev-tools:latest
docker tag nordri-dev-tools nordri/nordri-dev-tools:$TRAVIS_COMMIT
docker push nordri/nordri-dev-tools:latest
docker push nordri/nordri-dev-tools:$TRAVIS_COMMIT
docker logout
