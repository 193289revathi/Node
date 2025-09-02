#!/bin/bash
set -e
echo "Installing dependencies..."
cd /home/ec2-user/Node
npm install

# Ensure pm2 is installed
if ! command -v pm2 > /dev/null; then
    sudo npm install -g pm2
fi

pm2 stop employee-app || true
pm2 start index.js --name employee-app
pm2 save

