#!/usr/bin/env bash

docker-compose down -v
docker-compose --verbose up -V --abort-on-container-exit --exit-code-from client "$@"
