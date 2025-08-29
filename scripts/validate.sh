#!/bin/bash
echo "Validating deployment..."
curl -s http://localhost:3000 || exit 1

