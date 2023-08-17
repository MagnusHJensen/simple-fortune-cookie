docker_username_lower=$(echo "$DOCKER_USERNAME" | tr '[:upper:]' '[:lower:]')
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
DockerRepo="ghcr.io/${docker_username_lower}/"
docker build -t "${DockerRepo}backend:latest" -t "${DockerRepo}backend:$Tag" backend/