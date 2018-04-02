#! /bin/bash -eu

set -e

#Run the following command after docker is run, Cheers.
java -Xmx"$AEM_XMX_SIZE" -jar aem-publish-4503.jar  -nobrowser
