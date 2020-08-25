#!/usr/bin/env bash

if [ -n "$DOCKER_COMPOSE_PROJECT_DIR" ]; then
  PROJECT_DIR="--project-directory=$DOCKER_COMPOSE_PROJECT_DIR"
fi


docker-compose down -v
docker-compose $PROJECT_DIR up -V --abort-on-container-exit --exit-code-from client
