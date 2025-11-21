#!/bin/bash

docker run --name slidev --rm -it \
    -v ${PWD}:/slidev \
    -p 3030:3030 \
    flolbr/slidev:playwright
