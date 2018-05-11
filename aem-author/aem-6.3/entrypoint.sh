#! /bin/bash -eu

set -e

#Run the following command after docker is run, Cheers.
#java -Xmx"$AEM_XMX_SIZE" -jar aem-author-4502.jar  -nobrowser
java -server -XX:MaxPermSize=2048m -Xmx2048M -jar aem-author-4502.jar -r author
