#!/bin/bash
echo "Validating application..."
cd /home/ec2-user/Node
if [ ! -f index.js ]; then
  echo "Error: index.js not found!"
  exit 1
fi
echo "Validation complete."

