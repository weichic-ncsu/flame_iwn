#!/bin/bash

cd examples/mnist && \
flamectl create design mnist -d "mnist example" && \
flamectl create schema schema.json --design mnist && \
flamectl create code mnist.zip --design mnist && \

output=$(flamectl create dataset dataset.json) && \
echo "output is " $output && \
dataset_id=$(echo $output | cut -d '"' -f 2) && \
sed -i "s/62a61fbe5582e9863c394386/$dataset_id/g" job.json && \

flamectl create job job.json && \
flamectl get jobs 
