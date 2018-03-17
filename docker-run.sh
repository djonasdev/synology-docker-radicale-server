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

$DOCKER $DOCKER_ARGS run \
	-v $VOLUME_PATH:/data \
	-p 127.0.0.1:5232:5232 \
	$EXTRA_ARGS \
	djonasdev/synology-docker-radicale-server
