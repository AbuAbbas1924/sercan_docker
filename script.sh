#!/bin/bash

build_dev(){
    docker build -t build_pd -f Dockerfile .
}
run_dev(){
    docker run --name run_pd -p 8000:8000 build_pd
}

$@