#!/bin/bash

IMAGE_NAME = 'jupyter'
HOST_FOLDER = '~'
CONTAINER_MOUNT_POINT = 'home'
CONTAINER_NAME = 'jupyter'
SHA_PASSWORD = 'sha1:password'

docker build -t $IMAGE_NAME .

# UID and GID is corresponding to user in local machine.
# in this case GID is the same as UID (GID is null)
docker run -d -p 8888:8888 -v $HOST_FOLDER:/home/jovyan/$CONTAINER_MOUNT_POINT --user root -e GRANT_SUDO=yes -e NB_GID=${UID} -e NB_UID=${UID} --name $CONTAINER_NAME $IMAGE_NAME start-notebook.sh --NotebookApp.token='' --NotebookApp.notebook_dir=~/$CONTAINER_MOUNT_POINT --NotebookApp.password=$SHA_PASSWORD
