#!/bin/bash
(
  while true; do
    screen -wipe &> /dev/null
    if ! docker info &> /dev/null; then
      echo "Starting Docker in Docker..."
      screen -dmS dockerDaemon dockerd
    fi
    sleep 5s
  done
)&
exec "$@"