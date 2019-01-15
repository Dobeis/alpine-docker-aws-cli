FROM alpine:3.8

LABEL maintainer="Heitor Dobeis<heitor.dobeis@gmail.com>"

RUN apk --no-cache update && \
    apk --no-cache add bash docker jq python py-pip py-setuptools ca-certificates curl groff less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*