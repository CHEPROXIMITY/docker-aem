#! /bin/bash -eu

set -e

#Run the following command after docker is run, Cheers.
#java -Xmx"$AEM_XMX_SIZE" -jar aem-author-4502.jar  -nobrowser
java -server -XX:MaxPermSize=1024M -Xmx2048m -jar aem-author-4502.jar -r author -nobrowser
