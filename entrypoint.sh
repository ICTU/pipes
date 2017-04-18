while true ; do
 if [ "$(ip link show | grep $IF_NAME | grep UP)" != "" ] ; then break ; fi
 sleep 2
done

dhcpcd -B -4 $IF_NAME
ip a
