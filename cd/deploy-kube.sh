#!/usr/bin/env bash
cd $(dirname $0)

# stop on errors
set -e
./common.sh $@
export DEVENV=$1
export REGISTRY=$2
export TAG=$3

kubectl set image deployment/boxboat-blog-$DEVENV \
    hashicorp/http-echo=$REGISTRY/jenkins-demo-node