#!/bin/sh

while true ; do
 if [ "$(ip link show | grep $IF_NAME | grep 'state UP')" != "" ] ; then break ; fi
 sleep 2
done

ip a
dhcpcd -t 3600 -L -B -4 -e DNSREG_SOCKET=$DNSREG_SOCKET -e NET_PREFIX=$NET_PREFIX $IF_NAME
ip a
