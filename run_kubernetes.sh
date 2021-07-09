#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=hossameldin94/capstone

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment capstone --image=$dockerpath

kubectl run capstone\
    --image=$dockerpath\
    --port=5000 

# Step 3:
# List kubernetes pods

kubectl get pods

# Step 4:
# Forward the container port to a host

kubectl port-forward capstone 5000:5000
