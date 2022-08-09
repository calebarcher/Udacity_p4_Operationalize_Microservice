#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t udacity-project-4-ml . 

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run flask app
docker run -itd -p 8000:80 --name udacity_ml_project udacity-project-4-ml
