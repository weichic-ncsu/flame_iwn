#!/bin/bash

eval $(minikube docker-env) && \
cd fiab && ./flame.sh start && \
./build-config.sh && \
cd ../ && make clean && make install
