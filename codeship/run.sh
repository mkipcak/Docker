#!/bin/bash
docker rm -f hello-world-production
docker run -d -p 8000:80 --name hello-world-production nordri/hello-world:0.1
