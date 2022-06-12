#!/bin/bash

cd examples/mnist && \
flamectl create design mnist -d "mnist example" && \
flamectl create schema schema.json --design mnist && \
flamectl create code mnist.zip --design mnist && \

output=$(flamectl create dataset dataset.json) && \
echo "output is " $output && \
dataset_id=$(echo $output | cut -d '"' -f 2) && \
sed -i "s/61e0c1e86bdf29b562de7c22/$dataset_id/g" job.json && \

flamectl create job job.json && \
flamectl get jobs 