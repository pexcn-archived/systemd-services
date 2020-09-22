#!/bin/bash -e

# disable
systemctl stop netspeeder
systemctl disable netspeeder

# remove
rm -rf /etc/netspeeder 2>/dev/null || true
rm -f /lib/systemd/system/netspeeder.service 2>/dev/null || true

echo
echo "netspeeder uninstalled."
