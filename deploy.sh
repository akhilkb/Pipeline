#!/bin/bash

# Define the deployment directory
DEPLOY_DIR=/var/www/myapp

# Create the deployment directory if it doesn't exist
ssh -i $DEPLOYMENT_KEY $SERVER_USER@$SERVER_HOST "mkdir -p $DEPLOY_DIR"

# Rsync the project files to the server
rsync -avz -e "ssh -i $DEPLOYMENT_KEY" ./ $SERVER_USER@$SERVER_HOST:$DEPLOY_DIR

# Restart the server (assuming you're using a process manager like gunicorn or systemd)
ssh -i $DEPLOYMENT_KEY $SERVER_USER@$SERVER_HOST "sudo systemctl restart myapp"
