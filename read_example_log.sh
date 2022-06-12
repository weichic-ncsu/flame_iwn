#!/bin/bash

pod_name=$(echo $(kubectl get pods -n flame | grep agent | tr -s ' ' | cut -d ' ' -f 1) | cut -d ' ' -f 1) && \
kubectl exec -it -n flame $pod_name -- bash
