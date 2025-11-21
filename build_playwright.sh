#!/bin/bash

docker build \
    -f Dockerfile.playwright \
    -t flolbr/slidev:playwright .
