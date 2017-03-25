while true ; do
 if [ "$(ip link show | grep $IF_NAME)" != "" ] ; then break ; fi
 sleep 2
done

dhclient -d $IF_NAME
