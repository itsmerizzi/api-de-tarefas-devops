# Deployment Scripts Documentation

## build-and-push.sh
Builds the Docker image and optionally pushes it to a registry.

## deploy-local.sh
Starts the application locally using docker-compose.

## stop-and-remove.sh
Stops and removes containers created by docker-compose.

## restart.sh
Restarts containers and rebuilds the image.

## deploy-remote.sh
Example script for deploying the application to a remote server via SSH.

All scripts must be executed with:
chmod +x scripts/*.sh
