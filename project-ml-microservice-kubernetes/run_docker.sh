#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t proj5-v2 .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app in detach mode
docker run -d -p 80:80 --rm --name my-app proj5-v2
