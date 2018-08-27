#!/usr/bin/env bash

set -x

cp .env.example .env
docker-compose up -d
docker-compose logs -f &

sleep 10

docker-compose exec db bash -c "/app/query.sh"