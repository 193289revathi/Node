#!/bin/bash
# Go to app folder on EC2
cd /home/ec2-user/employee-app
# Start or restart app with PM2
pm2 start index.js --name employee-app || pm2 restart employee-app

