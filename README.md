# About this docker-aem
This is the repo of the Docker image for AEM instances. See the individual readme files on  how to use those Docker files.

Repository to maintain all the AEM related Dockerfile(s) and includes the followings.
01. AEM author instance(s) - [aem-author-6.2](https://github.com/CHEPROXIMITY/docker-aem/tree/develop/aem-author)
02. Java base instance(s)  - [aem-base-java](https://github.com/CHEPROXIMITY/docker-aem/tree/develop/aem-base-java)
03. Dispatcher instance(s) - [aem-dispatcher](https://github.com/CHEPROXIMITY/docker-aem/tree/develop/aem-dispatcher)
04. AEM publish instance(s) - [aem-publisher](https://github.com/CHEPROXIMITY/docker-aem/tree/develop/aem-publisher)


** Docker Compose **
`docker-compose` folder includes docker-compose.yml files to run multiple servers at once using the built images. 
The current docker-compose section includes 'docker-compose' setup for 
- AEM 6.2(author/publisher/dispather)
- AEM 6.3 (author/publisher/dispatcher)
- AEM 6.2 Author
- AEM 6.3 Author
