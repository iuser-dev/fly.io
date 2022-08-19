#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

NAME=$(cat fly.toml|tomlq -r .app)
docker build . -t $NAME
