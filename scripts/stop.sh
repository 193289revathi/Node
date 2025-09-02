#!/bin/bash
cd /home/ec2-user/Node
pm2 stop employee-app || true
pm2 delete employee-app || true

