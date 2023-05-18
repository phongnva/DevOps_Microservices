#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=phongnva
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
## Log into the Dockerhub from your local terminal
docker login
docker tag devops "$dockerpath/devops_microservice"
docker images

# Step 3:
# Push image to a docker repository
 docker push "$dockerpath/devops_microservice"