#!/bin/bash
echo "Validating Node app..."
curl -f http://localhost:3000 || exit 1

