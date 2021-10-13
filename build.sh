#!/bin/sh
set -e
set +x
cd frontend && docker build -t frontend -f Dockerfile2 .
docker create -ti --name dummy frontend sh
docker cp dummy:/app/build ./
docker rm -f dummy
