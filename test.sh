#!/bin/bash

TAG=1.0

docker rm test -f
docker run dcgsteve/publicfiles:${TAG}