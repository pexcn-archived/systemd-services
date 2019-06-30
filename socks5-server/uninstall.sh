#!/bin/bash -e

# disable
systemctl stop socks5-server
systemctl disable socks5-server

# remove
rm -rf /etc/socks5-server
rm -f /lib/systemd/system/socks5-server.service

echo
echo "socks5-server uninstalled."
