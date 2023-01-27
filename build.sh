#!/bin/bash

docker-compose down
docker-compose rm -f
docker-compose up --build --force-recreate -d
docker-compose exec asl bash
