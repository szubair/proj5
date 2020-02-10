#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=sabeerz/proj5

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run myapp1 --generator=run-pod/v1 --image=sabeerz/proj5 --port=80

# Step 3:
# List kubernetes pods
$ kubectl get pods -n sabeerz
NAME     READY   STATUS    RESTARTS   AGE
myapp1   1/1     Running   0          3m3s

# Step 4:
# Forward the container port to a host
### list the pods
$ kubectl get pods -n sabeerz -o wide
NAME     READY   STATUS    RESTARTS   AGE     IP          NODE                                          NOMINATED NODE   READINESS GATES
myapp1   1/1     Running   0          7m25s   10.8.0.50   gke-standard-cluster-1-pool-1-c00eb42c-03fn   <none>           <none>

### command to do port-forwarding 
$ kubectl port-forward pod/myapp1 :80 -n sabeerz
Forwarding from 127.0.0.1:37301 -> 80
Forwarding from [::1]:37301 -> 80

### TESTING - PORT FORWARDING
$ curl http://10.8.0.50
<h3>Sklearn Prediction Home</h3>

