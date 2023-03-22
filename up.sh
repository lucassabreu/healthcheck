#!/bin/bash

docker build . --tag ls/healthcheck || exit 1

docker stop healthcheck || true
docker rm healthcheck || true
docker run -d --restart=on-failure:2 --name healthcheck ls/healthcheck
docker logs -f healthcheck
