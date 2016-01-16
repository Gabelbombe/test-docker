#!/bin/bash


CID='prakhar1989/static-site'


## kickstart
eval "$(docker-machine env default)"


## Run static box
docker run -d -P --name static-site $CID


## List Ports
docker port static-site


## List and save ip
docker-machine ip default ; ip=$(docker-machine ip default)


## Start site back up
docker run -p 8888:80 $CID &
pid=$(echo $!)


## Wait for app to boot
sleep 5


## Launch ip
open http://$ip:8888


## Sleep and kill
sleep 10 ; kill $pid


## Clean up containers, is loud due to duplicity....
for container in $(docker ps -a |grep $CID |awk '{print$1}') ; do
  docker stop $container
  docker rm $container
done
