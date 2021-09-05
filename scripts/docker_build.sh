#!/usr/bin/env bash

CONTAINER=$1
DOCKERFILE=$2

shift
shift

echo "Building $CONTAINER container..."

sudo docker build -t $CONTAINER -f $DOCKERFILE "$@" .
