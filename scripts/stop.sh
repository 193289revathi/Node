#!/bin/bash
echo "Stopping Node.js app..."
cd /home/ec2-user/employee-app
pkill -f "node index.js"

