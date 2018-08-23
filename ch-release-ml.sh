#!/bin/bash
# Set up Missing Link for release

# Pull the latest software release
sh /usr/bin/ch-get-latest-software.sh

# Set the hostname to MissingLink-XXXX
sh /usr/bin/ch-set-hostname.sh

# Disable SSH
systemctl stop ssh
systemctl disable ssh

echo "Ready for Release!"

reboot
