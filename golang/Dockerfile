ARG GO_VERSION=1.14

FROM golang:${GO_VERSION}-alpine

RUN set -eux; \
    apk add --no-cache make git; \
    go get github.com/vektra/mockery/.../; \
    wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.23.8;
