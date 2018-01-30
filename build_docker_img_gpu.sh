#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#docker rmi -f $(docker images | grep "^<none>" | awk "{print $3}")
docker build -f $DIR/Dockerfile.gpu . -t hank2018/dl-docker:gpu -t hank2018/dl-docker:gpu
docker push hank2018/dl-docker