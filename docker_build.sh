#!/usr/bin/env sh

CURRENT_OS="darwin" # linux
docker run --rm -e GOOS=${CURRENT_OS} -v ${PWD}:/work -v ${GOPATH}/pkg:/go/pkg -w /work golang:latest go build -o built_with_docker 
