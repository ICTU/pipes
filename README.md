### Docker-Pipes
**_Host network stacks for service containers_**

### Usage

Start network container as follows:

```
docker run --net=none --name=pipes_for_web -d -e "pipework_cmd=ur_pipework_arguments here" -v /path/to/dnsreg/named/pipe/:/tmp/ips -e IP_PIPE=/tmp/ips -h www.host.name.here ictu/pipes
```

Start service container as follows:

```
docker run --net=container:pipes_for_web -d nginx
```

Pipes container logs will show the available interfaces.
