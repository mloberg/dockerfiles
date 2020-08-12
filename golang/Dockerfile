ARG GO_VERSION=1.15

FROM golang:${GO_VERSION}-alpine

RUN set -eux; \
    apk add --no-cache make git curl; \
    go get github.com/vektra/mockery/.../; \
    curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin v1.30.0;
