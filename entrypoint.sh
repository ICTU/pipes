while true; do
 echo "$(date "+%Y-%m-%d %H:%M:%S") [INFO] Available interfaces:"
 ip addr | awk '
  /^[0-9]+:/ {
    sub(/:/,"",$2); iface=$2 }
  /^[[:space:]]*inet / {
    split($2, a, "/")
    print iface" : "a[1]
  }' | sed "s/^/$(date "+%Y-%m-%d %H:%M:%S") [INFO] /"
 sleep 600
done
