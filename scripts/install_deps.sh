#!/bin/bash
set -e

echo "Installing httpd and dependencies..."

# Update packages
sudo yum update -y

# Install Apache (httpd)
sudo yum install -y httpd

# Ensure /var/www/html exists
sudo mkdir -p /var/www/html

# Set correct permissions
sudo chown -R ec2-user:ec2-user /var/www/html
sudo chmod -R 755 /var/www/html

