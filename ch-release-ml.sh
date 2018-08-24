#!/bin/bash
# Set up Missing Link for release

# Pull the latest software release
sh /usr/bin/ch-get-latest-software.sh

# Set the hostname to MissingLink-XXXX
sh /usr/bin/ch-set-hostname.sh

# Reset the WPA_Supplicant.conf
cp /ch/defaults/wpa_supplicant/wpa_supplicant.conf /etc/wpa_supplicant/

# Disable SSH
systemctl stop ssh
systemctl disable ssh

echo "Ready for Release!"

reboot
