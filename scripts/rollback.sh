#!/bin/bash
set -e

PREVIOUS_VERSION=$1

if [ -z "$PREVIOUS_VERSION" ]; then
  echo "Usage: ./scripts/rollback.sh <version>"
  exit 1
fi

echo "Rolling back to version ${PREVIOUS_VERSION}"

# Switch load balancer to BLUE
ssh deploy@lb-server "sudo systemctl restart load-balancer"

# Stop GREEN
ssh deploy@green-server "docker-compose -f docker-compose.prod.yml down"

echo "Rollback to ${PREVIOUS_VERSION} complete!"