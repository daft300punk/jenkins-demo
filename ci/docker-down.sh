#!/usr/bin/env bash
cd $(dirname $0)
cd ../

sudo docker-compose -p dev down
sudo docker-compose -p image down
exit 0
