#! /bin/bash -eu

set -e

#Run the following command after docker is run, Cheers.
java -server -XX:MaxPermSize=1024M -Xmx2048m -jar aem-publish-4503.jar -nobrowser
