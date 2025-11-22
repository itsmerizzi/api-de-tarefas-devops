#!/bin/bash

SERVER_USER="ubuntu"
SERVER_IP="123.456.78.90"
REMOTE_PATH="/var/www/api-tarefas"

echo "Sending project files to remote server..."
scp -r ../api-de-tarefas-devops $SERVER_USER@$SERVER_IP:$REMOTE_PATH

echo "Running Docker deployment remotely..."
ssh $SERVER_USER@$SERVER_IP "cd $REMOTE_PATH && docker-compose down && docker-compose up -d --build"

echo "Remote deploy completed!"
