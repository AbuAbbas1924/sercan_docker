#!/bin/bash

build_dev(){
    docker build -t bpd2:build --target build -f Dockerfile-multi .
}
run_dev(){
    docker run --rm --name rpd2-dev -p 8000:8000 bpd2:build
}

$@