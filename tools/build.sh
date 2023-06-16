#!/bin/bash

config=$1

pushd docker
docker build -t microlat .
popd

mkdir output
docker run --privileged -i -t --device /dev/kvm -v $(pwd)/$config:/config -v $(pwd)/output:/var/tmp/microlat microlat
