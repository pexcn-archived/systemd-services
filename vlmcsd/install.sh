#!/bin/bash -e

# config
curl -sSL https://github.com/pexcn/systemd-services/raw/master/vlmcsd/config/vlmcsd.ini --create-dirs -o /etc/vlmcsd/vlmcsd.ini

# service
curl -sSL https://github.com/pexcn/systemd-services/raw/master/vlmcsd/vlmcsd.service --create-dirs -o /lib/systemd/system/vlmcsd.service

# enable
systemctl enable vlmcsd
systemctl start vlmcsd

echo
echo "vlmcsd config: /etc/vlmcsd/vlmcsd.ini"
echo
echo "vlmcsd installed."
