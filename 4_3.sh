#!/bin/bash

wget --no-check-certificate --no-proxy -P 'etc/openvpn' https://vpn.iiit.ac.in/secure/linux.ovpn

wget --no-check-certificate --no-proxy -P 'etc/openvpn' --user=aniket.bhagat@students.iiit.ac.in --ask-password Ani#12345
# sudo mv linux
# sudo apt install openvpn

openvpn --config etc/openvpn/linux.ovpn
