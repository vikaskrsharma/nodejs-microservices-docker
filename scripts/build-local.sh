#!/bin/bash
set -u  # Exit if an undefined variable is used
set -e  # Exit if any command fails

# Ensure required variables are set
: "$1"                # Positional parameter for directory name
: "$VERSION"          # Environment variable for image version

export DIR=$1

# Build the Docker image locally
docker build -t $DIR:$VERSION --file ./$DIR/Dockerfile-prod ./$DIR

echo "Docker image built locally: $DIR:$VERSION"
