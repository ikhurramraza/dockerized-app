#!/bin/sh
set -e

IMAGE_NAME=
GITHUB_REPO=

tag=$1

exit_with_error() {
    message=$1
    echo "$message" 1>&2
    exit 1
}

test -n "$tag" || exit_with_error "Usage: $(dirname "$0")/$(basename "$0") [VERSION_TAG]"
test -n "$IMAGE_NAME" || exit_with_error "Constant IMAGE_NAME is misconfigured."
test -n "$GITHUB_REPO" || exit_with_error "Constant GITHUB_REPO is misconfigured."
test -n "$GITHUB_USERNAME" || exit_with_error "Env variable GITHUB_USERNAME is missing."
test -n "$GITHUB_TOKEN" || exit_with_error "Env variable GITHUB_TOKEN is missing."

docker login https://docker.pkg.github.com -u $GITHUB_USERNAME -p $GITHUB_TOKEN

docker build -t docker.pkg.github.com/$GITHUB_USERNAME/$GITHUB_REPO/$IMAGE_NAME:$tag .
docker push docker.pkg.github.com/$GITHUB_USERNAME/$GITHUB_REPO/$IMAGE_NAME:$tag

echo "$tag" >>$(dirname "$0")/tags
