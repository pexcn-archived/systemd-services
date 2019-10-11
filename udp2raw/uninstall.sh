#!/bin/bash -e

# disable
systemctl stop udp2raw
systemctl disable udp2raw

# remove
rm -rf /etc/udp2raw 2>/dev/null || true
rm -f /lib/systemd/system/udp2raw.service 2>/dev/null || true

echo
echo "udp2raw uninstalled."
