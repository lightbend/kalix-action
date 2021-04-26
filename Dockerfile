## Container image
FROM alpine:3.13

## Copy the entrypoint
COPY entrypoint.sh /entrypoint.sh

## Install cURL and akkasls
RUN apk update &&\
    apk add curl &&\
    rm -rf /var/lib/apt/lists/* &&\
    curl -OL https://downloads.akkaserverless.com/stable/akkasls_linux_amd64.tar.gz &&\
    tar xzf akkasls_linux_amd64.tar.gz &&\
    mv akkasls /bin

## Set the entry point when the container starts
ENTRYPOINT ["./entrypoint.sh"]