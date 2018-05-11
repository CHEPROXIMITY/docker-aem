# About this IBM J9 JRE 1.8.0
This is the repo of the IBM JAVA image for AEM. See the Docker [hub page](https://hub.docker.com/r/cheproximity/aem-base-java/) for the full readme on  how to use this Docker images.
This image includes linux alpine and the IBM JAVA 1.8(JRE).

The main idea is to keep this image as the base for the AEM instances.

## How to run
Run the following command to build the image:
```bash
docker build -t <IMAGE-NAME> .
```

Run the following command to run the image:
```bash
$ docker run -it \
    --name=<CONTAINER-NAME> \
    <IMAGE-NAME>  /bin/sh
```
To create a new bash session and you are in the container NOW!.
```bash
$ docker exec -it <CONTAINER_ID> /bin/bash
```

## Test JAVA version
* After creating a bash session, just run the following. You shold see the details of the JAVA version.
```bash
$ java -verison
```

