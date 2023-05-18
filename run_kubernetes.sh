#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=phongnva

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy project-devops-microservice --image="$dockerpath/devops_microservice"

# Step 3:
# List kubernetes pods
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment.apps/project-devops-microservice 8000:80
