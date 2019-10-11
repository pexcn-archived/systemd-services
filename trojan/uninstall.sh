#!/bin/bash -e

# disable
systemctl stop trojan
systemctl disable trojan

# remove
rm -rf /etc/trojan 2>/dev/null || true
rm -f /lib/systemd/system/trojan.service 2>/dev/null || true

echo
echo "trojan uninstalled."
