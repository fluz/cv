#!/bin/bash

echo "Removing previous execution"
rm -rf build/*
echo "Copy assets files"
cp -r assets build/assets

echo "Removing all containers"
docker ps -a -q | xargs docker rm
echo "Removing all images"
docker images -a -q | xargs docker rmi -f
echo "Execute last version"
docker-compose up cv
