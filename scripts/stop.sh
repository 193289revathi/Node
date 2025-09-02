#!/bin/bash
set -e
echo "Stopping application..."

pm2 stop employee-app || true

