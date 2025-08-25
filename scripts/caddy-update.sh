#!/bin/bash

# get latest version of a docker image:
# 1) fetch a list of all repository tags (https://docs.docker.com/docker-hub/api/latest/#tag/repositories/paths/~1v2~1namespaces~1%7Bnamespace%7D~1repositories~1%7Brepository%7D~1tags/get)
# 2) use jq to extract the version numbers (https://stedolan.github.io/jq/manual/)
# 3) sort the version numbers in reverse order (https://manpage.me/?q=sort)
# 4) extract the first line, which is the latest version (https://manpage.me/?q=head)
getLatestVersion() {
    local result=$(
        curl -sL "https://api.github.com/repos/$1/releases/latest" \
        | jq -r ".tag_name" \
        | sed "s/^v//"
    )

    echo "${result}"
}

LATEST_CADDY_VERSION=$(getLatestVersion "caddyserver/caddy")
LATEST_CUSTOM_VERSION=$(
    cat Dockerfile | \
    head -n 1 | \
    grep -E -oh '[0-9](\.[0-9](\.[0-9])?)?$'
)

echo "Latest version of Caddy: $LATEST_CADDY_VERSION"
echo "Latest version of this image: $LATEST_CUSTOM_VERSION"

if [[ $LATEST_CADDY_VERSION == $LATEST_CUSTOM_VERSION ]]; then
    echo "The image is up-to-date"
    exit 0
fi

if [[ ! -z $GITHUB_OUTPUT ]]; then
    echo "LATEST_CADDY_VERSION=$LATEST_CADDY_VERSION" >> $GITHUB_OUTPUT
fi

echo "This image is not up-to-date. Updating to $LATEST_CADDY_VERSION"

cp Dockerfile Dockerfile.tmp
echo "ARG CADDY_VERSION=$LATEST_CADDY_VERSION" > Dockerfile
cat Dockerfile.tmp | tail -n+2 >> Dockerfile
rm Dockerfile.tmp
