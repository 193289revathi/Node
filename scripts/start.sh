#!/bin/bash
echo "Starting Node.js app..."
cd /home/ec2-user/employee-app
# Kill old process if running
pkill -f "node index.js"
# Start app in background
nohup npm start > app.log 2>&1 &

