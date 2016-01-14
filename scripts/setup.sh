#!/bin/bash
# REF : https://docs.docker.com/machine/
# REF : https://docs.docker.com/v1.8/installation/mac/
# REF : http://prakhar.me/docker-curriculum/

brew update
brew install docker boot2docker docker-machine docker-compose busybox
brew cask install kitematic --appdir=~/Applications

mkdir -p ~/.docker/{machine,compose}
