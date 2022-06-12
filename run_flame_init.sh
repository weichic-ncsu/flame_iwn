#!/bin/bash

minikube stop 
minikube delete

minikube start --cpus 8 --memory 16384m --disk-size 104gb && \

minikube addons enable ingress && \
minikube addons enable ingress-dns && \
cd fiab && eval $(minikube docker-env) && ./build-image.sh && \
minikube tunnel
