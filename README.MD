### Build

Commands:

```
docker build --rm=false -t demo  .
```
 - This builds the docker image from the Dockerfile


```
docker run -it -p 80:80 demo
```

 - This starts the docker container and starts the node server

```
docker-machine ip default
```

 - Returns the IP of the docker VM

After all this, navigate to above IP in the browser.


Note: You can install nginx locally and setup a reverse proxy to the IP of the VM and the port exposed by the container.
