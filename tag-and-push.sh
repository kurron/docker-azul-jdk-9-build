#!/bin/bash

# use the time as a tag
UNIXTIME=$(date +%s)

# docker tag SOURCE_IMAGE[:TAG] TARGET_IMAGE[:TAG]
docker tag dockerazuljdk9build_azul-jdk-9:latest kurron/docker-azul-jdk-9-build:latest
docker tag dockerazuljdk9build_azul-jdk-9:latest kurron/docker-azul-jdk-9-build:${UNIXTIME}
docker images

# Usage:  docker push [OPTIONS] NAME[:TAG]
docker push kurron/docker-azul-jdk-9-build:latest
docker push kurron/docker-azul-jdk-9-build:${UNIXTIME}
