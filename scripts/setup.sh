#!/bin/bash
# REF : https://docs.docker.com/machine/
# REF : https://docs.docker.com/v1.8/installation/mac/
# REF : http://prakhar.me/docker-curriculum/

brew update


## juicy bits
brew install docker boot2docker           \
  docker-machine docker-machine-parallels \
  docker-compose docker-swarm


## ancillaries
brew cask install boot2docker-status  --appdir=~/Applications
brew cask install kitematic           --appdir=~/Applications


## Migrate boot2docker to docker-machine
docker-machine create -d virtualbox --virtualbox-import-boot2docker-vm boot2docker-vm docker-vm


## Add daemon runner
eval "$(docker-machine env default)"


## sanity check
brew prune
brew doctor
