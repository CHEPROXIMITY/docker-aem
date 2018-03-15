# About this base-ubuntu-apache
This is the repo of the Docker image for AEM dispatcher. See the Docker HUb page for the full readme on  how to use this Docker images.
This image includes Ubuntu 16.04 LTS and the Apache/2.4.18 (Ubuntu).

The main idea is to keep this image as the base for the AEM dispatcher instances.

## Prepareing the environment
### Virtual Host Files
* In the `vhosts` folder, check the existing 2 sample virtual host files. Feel free to add more.
* Update the following `DocumentRoot` folder as well.
* This folder would mount to the `/etc/apache2/sites-enabled/` folder in the container using the following `docker run ...` command. (Check [How to Run](https://github.com/CHEPROXIMITY/docker-aem/tree/develop/base-ubuntu-apache#how-to-run))
* So, You can maintain virtual host files from outside the container.

### Document Root folders (www)
* This is where you keep the `.htaccess` files.
* This folder would mount to the `/var/www` folder in the container using the following `docker run ...` command. (Check [How to Run](https://github.com/CHEPROXIMITY/docker-aem/tree/develop/base-ubuntu-apache#how-to-run))
* So, These files also are maintainable from outside the container.

### `dispatcher.any` file
* This file is located in the `conf` folder and you are free to edit.
* This `conf` folder would mount with the `/etc/apache2/conf` folder in the container using the following `docker run ...` command.(Check [How to Run](https://github.com/CHEPROXIMITY/docker-aem/tree/develop/base-ubuntu-apache#how-to-run))
* This file also can mainatain from outside.

### Dispatcher configuration files
* The `dispatcher.conf` and `dispatcher.load` configuration files are using to enable dispatcher module to the webserver. They are copying over to the container when the container run.
* You are free to change them according to your configuration preferences. 

### Dipatcher Cache
* The `cache` folder is located in `/opt/aem/dispatcher/cache`.

### Dispatcher Log
* The log file is `/var/log/apache2/dispatcher.log'. 

## How to run
Run the following command to build the image:
```bash
$ docker build -t <IMAGE-NAME> .
```

Run the following command to run the image:
```bash
$ docker run -d -p 80:80 \
    -it \
    -v ${PWD}/www:/var/www \
    -v ${PWD}/vhosts:/etc/apache2/sites-enabled/ \
    -v${PWD}/conf:/etc/apache2/conf \
    <IMAGE-NAME>  /bin/bash
```

Login to the container 
```bash
$ docker exec -it <CONTAINER_ID> /bin/bash
```

## Test dispatcher
* Load a server (`ex: http://dev.example.local/content/site/en.html`) that have configured.
* Tail the dispatcher logs using and see whether there is request entry to the AEM publisher form `4503`.
```bash
$ tail -f /var/log/apache2/dispatcher.log
```


