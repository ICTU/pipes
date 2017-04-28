#!/bin/sh

while true ; do
 if [ "$(ip link show | grep $IF_NAME | grep 'state UP')" != "" ] ; then break ; fi
 sleep 2
done

dhcpcd -t 3600 -L -B -4 -e IP_PIPE=$IP_PIPE $IF_NAME
ip a
