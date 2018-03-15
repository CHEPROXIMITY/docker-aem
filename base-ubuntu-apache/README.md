# About this base-ubuntu-apache
This is the repo of the Docker image for AEM dispatcher. See the Docker HUb page for the full readme on  how to use this Docker images.
This image includes Ubuntu 16.04 LTS and the Apache/2.4.18 (Ubuntu).

The main idea is to keep this image as the base for the AEM dispatcher instances.

## Prepareing the environment
### Virtual Host Files
1. There are 2 sample virtual host files in the `vhots` folder.
2. You are free to update them to have you own developmen host names.
3. Update the following `DocumentRoot` folder as well.
4. This folder would mount to the `/etc/apache2/sites-enabled/` folder in the container using the following `docker run ...` command.

### Document Root folders (www)
1. This is where you keep the `.htaccess` files.
2. This folder would mount to the `/var/www` folder in the container using the following `docker run ...` command.

### `dispatcher.any` file
1. This file is located in the `conf` folder and you are free to edit.
2. This `conf` folder would mount with the `/etc/apache2/conf` folder in the container.

### Dispatcher configuration files
1. The `dispatcher.conf` and `dispatcher.load` configuration files are using to enable dispatcher module to the webserver. They are copying over to the container when the container run.
2. You are free to change them according to your configuration preferences. 

## How to run
Run the following command to build the image:
`docker build -t <IMAGE-NAME> .`


Run the following command to run the image:
`docker run -d -p 80:80 -it -v ${PWD}/www:/var/www -v ${PWD}/vhosts:/etc/apache2/sites-enabled/ -v${PWD}/conf:/etc/apache2/conf <IMAGE-NAME>  /bin/bash`

Login to the container 
`docker exec -it <CONTAINER_ID> /bin/bash


