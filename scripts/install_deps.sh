#!/bin/bash
set -e


echo "Installing dependencies (httpd)..."

# Update yum packages
yum update -y

# Install Apache if not already installed
if ! command -v httpd &> /dev/null; then
    yum install -y httpd
fi

# Ensure web root exists
mkdir -p /var/www/html

# Adjust permissions
chown -R ec2-user:ec2-user /var/www/html
chmod -R 755 /var/www/html

echo "Dependencies installed successfully."

echo "Dependencies installed successfully."
# dummy data added for testing purpose
