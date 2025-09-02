#!/bin/bash
set -e
echo "Starting application..."

cd /home/ec2-user/Node
pm2 stop employee-app || true
#start the app
pm2 start index.js --name employee-app
pm2 save

