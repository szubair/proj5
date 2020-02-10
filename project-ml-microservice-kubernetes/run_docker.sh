#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t proj5-v2 .

# Step 2: 
# List docker images
$ docker image ls
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
proj5-v2            latest              78f4116a0ef3        5 hours ago         1.25GB
sabeerz/proj5       latest              78f4116a0ef3        5 hours ago         1.25GB
hadolint/hadolint   latest              47c4f2a5272a        11 days ago         8.91MB
python              3.7.3-stretch       34a518642c76        8 months ago        929MB

# Step 3: 
# Run flask app in detach mode
docker run -d -p 80:80 --rm --name my-app proj5-v2

## running locally
$ docker ps
CONTAINER ID        IMAGE               COMMAND                CREATED             STATUS              PORTS                NAMES
49f9cc048c9f        proj5-v2            "python /app/app.py"   5 hours ago         Up 5 hours          0.0.0.0:80->80/tcp   my-app

