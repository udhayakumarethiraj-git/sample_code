#!/bin/bash
set -e
systemctl start httpd
systemctl enable httpd
chown -R apache:apache /var/www/html || true
