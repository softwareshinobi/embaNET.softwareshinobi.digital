#!/bin/bash

set -e

set -x

reset

clear

##

echo "##"
echo "## starting..."
echo "##"

##

docker-compose -f production.yaml pull

docker-compose -f production.yaml build

docker-compose -f production.yaml down --remove-orphans

docker-compose -f production.yaml up -d

##

echo "##"
echo "## started..."
echo "##"
