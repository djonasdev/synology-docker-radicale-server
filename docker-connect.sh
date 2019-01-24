#!/bin/sh
#Open bash shell in the container

#docker command. You can use "sudo docker" if you need so
DOCKER="docker"
#Image name
IMAGE="djonasdev/synology-docker-radicale-server"

$DOCKER exec -it $($DOCKER ps -a -q --filter ancestor=$IMAGE --format="{{.ID}}") /bin/sh