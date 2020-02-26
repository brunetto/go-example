#!/usr/bin/env sh

GIT_TOKEN=""
docker run --rm -e TARGET_OS=${TARGET_OS} -v ${PWD}:/work -v ${GOPATH}/pkg:/go/pkg -w /work golang:latest ./build.sh
