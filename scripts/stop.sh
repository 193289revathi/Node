#!/bin/bash
echo "Stopping application..."

# Check if pm2 is installed, if not, skip
if command -v pm2 > /dev/null; then
    # Stop the app if it's running
    pm2 stop all || true

    # Delete the app from pm2 list to avoid duplicates
    pm2 delete all || true
else
    echo "PM2 not installed, skipping stop step."
fi

