#!/bin/bash
set -e

echo "Stopping httpd service if running..."
sudo systemctl stop httpd || true

