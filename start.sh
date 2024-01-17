#!/bin/bash


# Define the container name
CONTAINER_NAME="my_node_app"
IMAGE_NAME="my_node_app"

# Check if the container is running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Container $CONTAINER_NAME is running. Attempting to stop and remove..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
    echo "Container $CONTAINER_NAME has been stopped and removed."
fi

# Check if the image exists
if [ "$(docker images -q $IMAGE_NAME)" ]; then
    echo "Image $IMAGE_NAME exists. Attempting to remove..."
    docker rmi $IMAGE_NAME
    echo "Image $IMAGE_NAME has been removed."
fi

# Build and run the new container
echo "Building and running the new container..."
docker build -t $IMAGE_NAME .
docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME
echo "New container $CONTAINER_NAME is running."
