#!/bin/bash
set -e
echo "Installing dependencies..."

# Pre-create the deployment folder
mkdir -p /home/ec2-user/Node

# Copy all files from deployment archive to the destination
cp -r $DEPLOYMENT_ROOT/* /home/ec2-user/Node/

# Move into the folder
cd /home/ec2-user/Node

# Install Node.js dependencies
npm install

# Install pm2 globally if missing
if ! command -v pm2 > /dev/null; then
    sudo npm install -g pm2
fi

# Stop old app if running
pm2 stop employee-app || true

# Start app
pm2 start index.js --name employee-app
pm2 save

