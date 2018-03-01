# About this base-ubuntu-16.04-jre8
This is the repo of the Docker image for AEM. See the Docker HUb page for the full readme on  how to use this Docker images.
This image includes Ubuntu 16.04 LTS and the Oracle JAVA 1.8(JRE).

The main idea is to keep this image as the base for the AEM instances.

## How to run
Run the following command to build the image:
`docker build -t <IMAGE-NAME> .`

Run the following command to run the image:
`docker run -it --name=<CONTAINER-NAME> <IMAGE-NAME>  /bin/bash`


