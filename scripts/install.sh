#!/bin/bash
set -e
echo "Installing dependencies..."

# Go to the folder where CodeDeploy copies the new files
cd /home/ec2-user/employee-app

# Install dependencies
npm install

# Ensure pm2 is installed
if ! command -v pm2 > /dev/null; then
    sudo npm install -g pm2
fi

# Stop old app if running
pm2 stop employee-app || true

# Start the app
pm2 start index.js --name employee-app

# Save pm2 process list
pm2 save

