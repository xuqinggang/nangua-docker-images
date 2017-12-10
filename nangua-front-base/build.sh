#!/usr/bin/env bash

TAG=private-registry.sohucs.com/nangua/nangua_h5_node:v8.9.3

# docker构建
docker build -t ${TAG} -f ./Dockerfile .
# push
docker push ${TAG}
