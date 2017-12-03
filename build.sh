#!/bin/bash

docker pull azul/zulu-openjdk:9
docker-compose build --pull
