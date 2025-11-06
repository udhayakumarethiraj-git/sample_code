#!/bin/bash
set -e

echo "Starting httpd service..."
sudo systemctl start httpd
sudo systemctl enable httpd

