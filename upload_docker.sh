#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=hossameldin94/capstone

# Step 2:  
# Authenticate & tag
docker image tag capstone $dockerpath

cat pass.txt | docker login --username hossameldin94 --password-stdin

echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push hossameldin94/capstone