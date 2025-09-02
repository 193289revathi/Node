#!/bin/bash
echo "Stopping application..."
pm2 stop employee-app || true
pm2 delete employee-app || true

