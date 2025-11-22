#!/bin/bash

echo "Starting local deployment using docker-compose..."

docker-compose up -d --build

echo "Local deployment complete!"
echo "Application running at: http://localhost:3000"
