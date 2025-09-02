#!/bin/bash
set -e
echo "Cleaning old files..."
cd /home/ec2-user/employee-app

# Remove all files except scripts folder
shopt -s extglob
rm -rf !("scripts")
shopt -u extglob

echo "Installing dependencies..."
npm install

# Ensure pm2 is installed
if ! command -v pm2 > /dev/null; then
    sudo npm install -g pm2
fi

pm2 stop employee-app || true
pm2 start index.js --name employee-app
pm2 save

