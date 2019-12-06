#!/bin/bash -e

# disable
systemctl stop chisel
systemctl disable chisel

# remove
rm -rf /etc/chisel 2>/dev/null || true
rm -f /lib/systemd/system/chisel.service 2>/dev/null || true

echo
echo "chisel uninstalled."
