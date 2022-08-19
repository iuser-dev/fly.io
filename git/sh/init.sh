#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR/..
set -ex

NAME=igit
REGION=hkg
flyctl postgres create --name $NAME --region $REGION
flyctl launch --image gitea/gitea:latest --name $NAME --region $REGION --no-deploy
flyctl postgres attach $NAME-db --app $NAME
flyctl volumes create data --no-encryption --region $REGION
flyctl ips allocate-v4
flyctl ips allocate-v6

