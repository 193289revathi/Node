#!/bin/bash
echo "Installing dependencies..."
# Create folder if it doesn't exist
mkdir -p /home/ec2-user/employee-app
cd /home/ec2-user/employee-app

# Copy the source code from CodeDeploy (already done by CodeDeploy)
# Install Node.js dependencies
npm install

