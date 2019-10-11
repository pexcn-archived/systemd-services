#!/bin/bash -e

# disable
systemctl stop mtg
systemctl disable mtg

# remove
rm -rf /etc/mtg 2>/dev/null || true
rm -f /lib/systemd/system/mtg.service 2>/dev/null || true

echo
echo "mtg uninstalled."
