#!/bin/bash

scriptPos=${0%/*}

COMPOSE_FILE=$scriptPos/../docker-compose.yml

function start() {
  echo "Starting Docker Compose environment..."
  docker compose -f $COMPOSE_FILE up -d
}

function stop() {
  echo "Stopping Docker Compose environment..."
  docker compose -p "gf-01" -f $COMPOSE_FILE down
}

case "$1" in
  start)
    start
    ;;
  stop)
    stop
    ;;
  *)
    echo "Usage: $0 {start|stop}"
    exit 1
    ;;
esac

exit 0
