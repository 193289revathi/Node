#!/bin/bash
echo "Installing dependencies..."

# Navigate to app directory
cd /home/ec2-user/employee-app

# Install dependencies
npm install

# If pm2 is not installed, install it globally
if ! command -v pm2 > /dev/null; then
    sudo npm install -g pm2
fi

# Start the app with pm2
pm2 start index.js --name employee-app

# Save the process list for auto-start on reboot
pm2 save

