## Container image
FROM alpine:3.13

## Copy the entrypoint
COPY entrypoint.sh /entrypoint.sh

## Install cURL and kalix
RUN apk update &&\
    apk add curl &&\
    rm -rf /var/lib/apt/lists/* &&\
    VERSION="2.0.39" &&\
    wget https://downloads.kalix.io/${VERSION}/kalix_linux_amd64_${VERSION}.tar.gz &&\
    tar xzf kalix_linux_amd64_${VERSION}.tar.gz &&\
    mv kalix /bin

## Set the entry point when the container starts
ENTRYPOINT ["/entrypoint.sh"]
