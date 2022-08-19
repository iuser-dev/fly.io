#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

source ./build.sh

docker run --env-file env --rm -it $NAME:latest /bin/bash
