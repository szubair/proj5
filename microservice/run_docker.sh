#!/usr/bin/env bash
## Complete the following steps to get Docker running locally

# Build image and add a descriptive tag
docker build -t proj5 .

# List docker images
docker image ls

# Run flask app in detach mode
docker run -d -p 80:80 proj5

## running locally
docker ps

