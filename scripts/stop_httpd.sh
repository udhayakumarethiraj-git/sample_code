#!/bin/bash
set -e
if systemctl is-active --quiet httpd; then
  systemctl stop httpd
fi
