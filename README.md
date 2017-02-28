# maven-docker-kubectl

Docker image with `mvn`, `docker`, and `kubectl`

View on Docker Hub: [tjkemper/maven-docker-kubectl](https://hub.docker.com/r/tjkemper/maven-docker-kubectl/)

### Build

```
docker build -t tjkemper/maven-docker-kubectl:0.1 .
```

### Run

```
docker run -it --rm -v /var/run/docker.sock:/var/run/docker.sock --entrypoint "/bin/bash" tjkemper/maven-docker-kubectl:0.1
```

