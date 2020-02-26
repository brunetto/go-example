#!/usr/bin/env sh

TARGET_OS="darwin" # linux

if [ -f /.dockerenv ]; then
    # go env -w GOPRIVATE=my-private-host
    git config --global url."https://${GIT_TOKEN}:x-oauth-basic@github.com/".insteadOf "https://github.com/"
    export GO111MODULE=on
    GOPATH=/go
fi

cd cmd/app
GOOS=${TARGET_OS} go build  -o app *.go
