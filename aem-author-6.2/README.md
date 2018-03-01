# About this docker-aem
This is the repo of the Docker image for AEM. See the Docker HUb page for the full readme on  how to use this Docker images.
This image includes AEM 6.2 (author instance), Ubuntu 16.04 LTS and the Oracle JAVA 1.8(JRE).

## How to run
Place the AEM JAR package to the current folder and rename it to `aem-author-4502.jar` as it's refference to the Dockerfile.

Run the following command to build the image:
`docker build -t <IMAGE-NAME> .`

Updated the `license.properties` file with your AEM license details.

Run the following command to run the created image:
`docker run -p 4502:4502 -it --name=<CONTAINER-NAME> -v ${PWD}/license.properties:/opt/aem/author/license.properties -v /sys/fs/cgroup:/sys/fs/cgroup:ro --cap-add SYS_ADMIN <IMAGE-NAME>  /bin/bash`


## Run AEM 6.2 server

After loading the container, it would land on `/opt/aem/author` folder. Run the following shell script to load the AEM server:
`./entrypoint.sh`