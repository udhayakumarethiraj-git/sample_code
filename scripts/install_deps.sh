#!/bin/bash

# 2nd line edited using web editor
# 3rd line added for testing edited using web to have hands on rebase command
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
#
#
# last line added using local editor
#
#
#
#
# added last line for testing and handon on rebase command1
#
# test line added for git stash
#
