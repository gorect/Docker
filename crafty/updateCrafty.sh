#!/usr/bin/env bash

docker stop crafty_container
docker rm crafty_container
docker pull registry.gitlab.com/crafty-controller/craft>
git fetch && git pull && docker build . -t crafty
docker compose up -d --force-recreate
