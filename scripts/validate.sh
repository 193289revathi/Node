#!/bin/bash
echo "Validating application..."
cd /home/ec2-user/Node
# Optional: simple check to see if index.js exists
if [ ! -f index.js ]; then
  echo "Error: index.js not found!"
  exit 1
fi
echo "Validation complete."

