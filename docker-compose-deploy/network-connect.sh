#!/bin/bash

[ -z "$CONTAINERS" ] && exit 0
set -x

for CONTAINER in $(echo $CONTAINERS | sed "s/,/ /g")
do
    # call your procedure/other scripts here below
    docker network connect $STACK_NAME $CONTAINER || true
done
