#!/bin/bash
echo "Stopping existing Node app..."
pkill -f "node index.js" || true

