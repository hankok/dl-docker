#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")
docker build -f $DIR/Dockerfile.cpu . -t hank2018/dl-docker:latest -t hank2018/dl-docker:v0.01
docker push hank2018/dl-docker