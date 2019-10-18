#!/bin/bash -e

# disable
systemctl stop udpspeeder
systemctl disable udpspeeder

# remove
rm -rf /etc/udpspeeder 2>/dev/null || true
rm -f /lib/systemd/system/udpspeeder.service 2>/dev/null || true

echo
echo "udpspeeder uninstalled."
