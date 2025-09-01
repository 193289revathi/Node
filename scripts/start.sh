#!/bin/bash
echo "Starting Node app..."
cd /home/ec2-user/employee-app
nohup node index.js > app.log 2>&1 &

