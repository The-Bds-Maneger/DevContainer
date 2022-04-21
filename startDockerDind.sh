#!/bin/bash
(
  while true; do
    screen -wipe &> /dev/null
    if ! docker info &> /dev/null; then
      sudo screen -dm dockerd
    fi
    sleep 5s
  done
)&
exec "$@"