#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="sabeerz/proj5"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run myapp --generator=run-pod/v1 --image=sabeerz/proj5 --port=80

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
### list the pods
kubectl get pods -o wide

### command to do port-forwarding 
kubectl port-forward pod/myapp 80:80

