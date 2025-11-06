#!/bin/bash
set -e  # Exit on any error

echo "Starting deployment with rsync..."

# Define target directory
TARGET_DIR="/var/www/html"

# Ensure target directory exists
sudo mkdir -p $TARGET_DIR

# Clean existing files but keep directory
sudo rm -rf ${TARGET_DIR:?}/*

# Use rsync to copy files safely, excluding deployment files
sudo rsync -av --exclude='scripts' --exclude='appspec.yml' ./ $TARGET_DIR/

# Restart Apache if running
if systemctl is-active --quiet httpd; then
  echo "Restarting Apache..."
  sudo systemctl restart httpd
else
  echo "Starting Apache..."
  sudo systemctl start httpd
fi

echo "Deployment completed successfully."

