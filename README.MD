###How to build

Commands:

```
docker build --rm=false -t demo  .
```
 - This builds the docker image from the Dockerfile


```
docker run -it -p 3000:3000 demo
```

 - This starts the docker container and starts the node server