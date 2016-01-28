#!/bin/sh -ex

docker build -t builder -f Dockerfile.builder .
docker run --rm -v "$(pwd)":/out builder
docker build -t christianbladescb/drafter:2.1.2 .

if [ "$1" == "push" ]; then
    docker push christianbladescb/drafter:2.1.2
fi

