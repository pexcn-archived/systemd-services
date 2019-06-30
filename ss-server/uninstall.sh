#!/bin/bash -e

# disable
systemctl stop ss-server@aes
systemctl disable ss-server@aes
systemctl stop ss-server@chacha20
systemctl disable ss-server@chacha20

# remove
rm -rf /etc/shadowsocks-libev
rm -f /lib/systemd/system/ss-server@.service
