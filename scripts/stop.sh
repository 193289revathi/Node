#!/bin/bash
echo "Stopping existing Node app..."
# Stop node app if running, ignore error if not running
if pgrep -f "node index.js" > /dev/null
then
  pkill -f "node index.js"
  echo "Node app stopped."
else
  echo "No Node app running."
fi

