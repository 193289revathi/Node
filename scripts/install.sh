#!/bin/bash
set -e
echo "Installing dependencies..."

cd /home/ec2-user/Node

# Install Node.js dependencies
npm install

# Ensure pm2 is installed globally
if ! command -v pm2 > /dev/null; then
    sudo npm install -g pm2
fi
