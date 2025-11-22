#!/bin/bash

echo "Restarting containers..."

docker-compose down
docker-compose up -d --build

echo "Restart complete!"
