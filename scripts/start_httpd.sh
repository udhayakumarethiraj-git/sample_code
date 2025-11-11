#!/bin/bash
set -e

echo "Starting httpd service..."
systemctl start httpd
systemctl enable httpd

# Simple health check
if systemctl is-active --quiet httpd; then
    echo "httpd service started successfully."
else
    echo "Error: httpd service failed to start!"
    exit 1
fi



