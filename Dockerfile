## Container image
FROM alpine:3.13

## Copy the entrypoint
COPY entrypoint.sh /entrypoint.sh

## Install cURL and kalix
RUN apk update &&\
    apk add curl &&\
    rm -rf /var/lib/apt/lists/* &&\
    wget https://downloads.kalix.io/latest/kalix_linux_amd64.tar.gz &&\
    tar xzf kalix_linux_amd64.tar.gz &&\
    mv kalix /bin

## Set the entry point when the container starts
ENTRYPOINT ["/entrypoint.sh"]
