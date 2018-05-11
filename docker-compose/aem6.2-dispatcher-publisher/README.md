# About this aem6.2-dispatcher-publisher
This is the document for about this `docker-compose`.
Make sure to change the ports if you are using multiple AEM containers.

## To Run
To run the `docker-compose`

```bash
docker-compose up
```

To run the `docker-compose` in background

```bash
docker-compose up -d
```

To down/kill services, run the following
```bash
docker-compose down
```

## External Volumes
AEM stores it's contents inside the AEM and the folder called `repository` contain all of those content in the installtion folder. If, for some reason, you delete the container you would loss the data which container hold.So, If you create the container again you must install/create/configure your content from the scretch. Therefore, we must persist data after the containers are deleted.

### How do we persist data
In docker, there are two ways of to make persisting data by mapping containter folders to local/external drive.
- bindmount - Mounts the host directory
- volume - create a volume with no relationship to the host.

This setup using the later option by creating new volume to map AEM `repository` folder and keep it persisitant. You can kill the container multiple time or can use that volume for another AEM version container by mapping correctly.

How it has done in the `docker-compose.yml` file.
```bash
publishRepo:/opt/aem/publish/crx-quickstart/repository
```
or 

```bash
authorRepo:/opt/aem/author/crx-quickstart/repository
```

You can see the volumes by using the following command
```bash
docker volume ls
```


## Author/publisher logs
The logs folders of those instances has mapped to two local folders: `authorLogs` and `publishLogs`

Use the following command to tail the logs from local
```bash
tail -f authorLogs/*
```

```bash
tail -f publishLogs/*
```


