#!/bin/bash

IMAGE_NAME="api-tarefas"
TAG="latest"

echo "Building Docker image..."
docker build -t $IMAGE_NAME:$TAG .

echo "Pushing image to local Docker (or registry if configured)..."
# Caso queira usar Docker Hub:
# docker tag $IMAGE_NAME:$TAG seu-usuario/$IMAGE_NAME:$TAG
# docker push seu-usuario/$IMAGE_NAME:$TAG

echo "Build and push completed!"
