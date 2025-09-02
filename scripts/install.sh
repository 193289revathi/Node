#!/bin/bash
set -e
echo "Installing dependencies..."

# Navigate to the deployment folder
cd /home/ec2-user/Node

# Install Node.js dependencies
npm install

# Ensure pm2 is installed globally
if ! command -v pm2 > /dev/null; then
    sudo npm install -g pm2
fi

# Stop the app if it’s already running
pm2 stop employee-app || true

# Start the app
pm2 start index.js --name employee-app
pm2 save

