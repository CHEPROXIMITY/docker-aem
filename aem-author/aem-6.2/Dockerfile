FROM cheproximity/aem-base-java:jre-1.8
LABEL maintainer="hashdev0"
ENV AEM_XMX_SIZE="1024M"

WORKDIR /opt/aem/author
COPY aem-author-4502.jar .
COPY entrypoint.sh .

EXPOSE 4502

ENTRYPOINT ["/opt/aem/author/entrypoint.sh"]