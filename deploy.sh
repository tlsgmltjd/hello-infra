#!/usr/bin/env bash

APP_NAME=hello-infra
REPOSITORY=/home/ubuntu/

echo "> Check the currently running container"
CONTAINER_ID=$(sudo docker ps -aqf "name=$APP_NAME")

if [ -z "$CONTAINER_ID" ];
then
  echo "> No such container is running."
else
  echo "> Stop and remove container: $CONTAINER_ID"
  sudo docker stop "$CONTAINER_ID"
  sudo docker rm "$CONTAINER_ID"
fi

echo "> Remove previous Docker image"
sudo docker rmi "$APP_NAME"

echo "> Build Docker image"
sudo docker build -t "$APP_NAME" "$REPOSITORY"

echo "> Run the Docker container"
sudo docker run -d -p 8080:8080 --name "$APP_NAME" "$APP_NAME"
