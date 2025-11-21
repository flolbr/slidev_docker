#!/bin/bash

docker run --name slidev --rm -it \
    --user node \
    -v ${PWD}:/slidev \
    -p 3030:3030 \
    flolbr/slidev:latest
