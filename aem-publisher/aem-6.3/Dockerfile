FROM cheproximity/aem-base-java:jre-1.8
LABEL maintainer="hashdev0"
ENV AEM_XMX_SIZE="1024m"

WORKDIR /opt/aem/publish
COPY aem-publish-4503.jar .
COPY entrypoint.sh .

EXPOSE 4503

ENTRYPOINT ["/opt/aem/publish/entrypoint.sh"]