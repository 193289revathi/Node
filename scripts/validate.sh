#!/bin/bash
set -e
echo "Validating application..."

# check if app is running
pm2 show employee-app > /dev/null
