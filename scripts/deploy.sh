#!/bin/bash
set -e

VERSION=$(node -pe "require('./package.json').version")
ENVIRONMENT=${1:-staging}

echo "Deploying Gym Management System v${VERSION} to ${ENVIRONMENT}"

# Build Docker image
docker build -t gym-app:${VERSION} .

# Tag image for registry
docker tag gym-app:${VERSION} ghcr.io/username/gym-app:${VERSION}
docker tag gym-app:${VERSION} ghcr.io/username/gym-app:latest

# Push to registry
docker push ghcr.io/username/gym-app:${VERSION}
docker push ghcr.io/username/gym-app:latest

echo "Deployment to ${ENVIRONMENT} complete!"