#!/bin/bash
docker_username_lower=$(echo "$DOCKER_USERNAME" | tr '[:upper:]' '[:lower:]')
echo "$DOCKER_PASS" | docker login ghcr.io --username "$docker_username_lower" --password-stdin
docker push "ghcr.io/$docker_username_lower/frontend:${GIT_COMMIT::8}"
docker push "ghcr.io/$docker_username_lower/frontend:latest" &
wait