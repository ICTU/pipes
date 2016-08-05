### Docker-Pipes
**_Host network stacks for service containers_**

### Status

* Tested on centos7 kernel 4.3.0-1.el7.elrepo.x86_64 and coreos alpha 983.0.0
* Should be used in conjunction with Docker-Plumber

### Usage

Start network container as follows:

```
docker run --net=none --name=pipes_for_web -d -e "pipework_cmd=ur_pipework_arguments here" pipes
```

Start service container as follows:

```
docker run --net=container:pipes_for_web -d nginx
```

Pipes container logs will show the available interfaces.
