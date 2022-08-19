#!/usr/bin/env bash

DIR=$(dirname $(realpath "$0"))
cd $DIR
set -ex

flyctl certs list
flyctl certs create git.iuser.link
