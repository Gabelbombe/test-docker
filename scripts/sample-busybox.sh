#!/bin/bash

## kickstart
eval "$(docker-machine env default)"


## Pull busybox from registry
docker pull busybox


## List images
docker images


## Echo something silly
docker run busybox echo "hello from busybox"


## Drop into the box
docker run -it busybox sh
