#!/bin/sh

# Copyright (c) 2018-2019, Fares Abdullah, all rights reserved.

set -x

rm -rf ./log/*
rm -rf ./app/var/cache/*
rm -rf ./app/var/log/*
rm -f ./app/var/data.db
rm -rf ./app/src/Migrations/*
docker rm $(docker ps -a -q) -f
docker container prune -f
docker image prune -f
