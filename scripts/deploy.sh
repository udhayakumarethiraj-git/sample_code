#!/bin/bash
set -e

echo "Starting deployment..."

# Define source and destination directories
SRC_DIR="/opt/codedeploy-agent/deployment-root/$DEPLOYMENT_GROUP_ID/$DEPLOYMENT_ID/deployment-archive"
DEST_DIR="/var/www/html"

echo "Copying application files from $SRC_DIR to $DEST_DIR"

# Create destination directory if it doesn't exist
sudo mkdir -p $DEST_DIR

# Use rsync safely — exclude system directories
sudo rsync -av --delete "$SRC_DIR/" "$DEST_DIR/" \
  --exclude='/proc' \
  --exclude='/sys' \
  --exclude='/dev' \
  --exclude='/tmp' \
  --exclude='/var/log' \
  --exclude='/opt/codedeploy-agent' 

echo "Deployment completed successfully!"
