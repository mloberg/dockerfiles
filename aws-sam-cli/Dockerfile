FROM python:3.7-alpine

RUN set -eux; \
    apk add --no-cache git docker-cli; \
    apk add --no-cache --virtual builddeps gcc musl-dev; \
    pip --no-cache-dir install aws-sam-cli awscli; \
    apk del builddeps

ENV SAM_CLI_TELEMETRY=0

WORKDIR /sam

ENTRYPOINT [ "sam" ]
