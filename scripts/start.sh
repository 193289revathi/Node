#!/bin/bash
echo "Starting application..."
cd /home/ec2-user/employee-app
pm2 start index.js --name employee-app
pm2 save

