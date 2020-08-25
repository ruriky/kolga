#!/usr/bin/env bash

if [ -n "$TEST_WORKDIR" ]; then
  WORKDIR="--workdir=$TEST_WORKDIR"
fi

docker-compose down -v
docker-compose up -V $WORKDIR --abort-on-container-exit --exit-code-from client
