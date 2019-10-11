#!/bin/bash -e

# disable
systemctl stop ss-server@aes
systemctl disable ss-server@aes
systemctl stop ss-server@chacha20
systemctl disable ss-server@chacha20

# remove
rm -rf /etc/shadowsocks-libev 2>/dev/null || true
rm -f /lib/systemd/system/ss-server@.service 2>/dev/null || true

echo
echo "ss-server uninstalled."
