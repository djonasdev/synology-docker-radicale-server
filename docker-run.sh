#!/bin/sh
#Run a Radicale server docker container with host folder as a volume

#Default volume path on host.
VOLUME_PATH="/home/djonas/Docker/Radicale"
#Some extra arguments. Like -d ant -ti
EXTRA_ARGS="-d"
#docker command. You can use "sudo docker" if you need so
DOCKER="docker"
#Extra args to docker command. Like using remote dockerd or something else
DOCKER_ARGS=""
#Image name
IMAGE="djonasdev/synology-docker-radicale-server"

#Stop the old instance if already running
$DOCKER rm $($DOCKER stop $($DOCKER ps -a -q --filter ancestor=$IMAGE --format="{{.ID}}"))

$DOCKER $DOCKER_ARGS run \
	-v $VOLUME_PATH:/data \
	-p 127.0.0.1:5232:5232 \
	$EXTRA_ARGS \
	$IMAGE
