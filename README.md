# Systemd Services

This is a collection of systemd service units for some programs, it can be combined with [static-build-ci](https://github.com/pexcn/static-build-ci).

## Usage

```bash
PROGRAM=ss-server
#PROGRAM=socks5-server
#PROGRAM=mtg
#PROGRAM=trojan
#PROGRAM=udp2raw
#PROGRAM=udpspeeder
#PROGRAM=vlmcsd

# install
curl -sSL https://github.com/pexcn/systemd-services/raw/master/$PROGRAM/install.sh | bash
# uninstall
curl -sSL https://github.com/pexcn/systemd-services/raw/master/$PROGRAM/uninstall.sh | bash
```
