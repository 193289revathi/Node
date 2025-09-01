#!/bin/bash
echo "Validating Node app..."
# Wait a few seconds for app to start
sleep 5
curl -f http://localhost:3000 || exit 1
echo "Node app is running successfully."

