#!/bin/bash -e

# disable
systemctl stop vlmcsd
systemctl disable vlmcsd

# remove
rm -rf /etc/vlmcsd 2>/dev/null || true
rm -f /lib/systemd/system/vlmcsd.service 2>/dev/null || true

echo
echo "vlmcsd uninstalled."
