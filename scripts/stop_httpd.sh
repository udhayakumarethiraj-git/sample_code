#!/bin/bash
set -e

echo "Stopping httpd service if running..."
systemctl stop httpd || true
