#!/bin/bash

LATEST_PATCH_VERSION=$(
    cat Dockerfile | \
    head -n 1 | \
    grep -E -oh '[0-9](\.[0-9](\.[0-9])?)?$'
)

LATEST_MINOR_VERSION=$(
    echo $LATEST_PATCH_VERSION | \
    grep -E -oh '^[0-9](\.[0-9])'
)

echo "Latest minor version: $LATEST_PATCH_VERSION"
echo "Latest major version: $LATEST_MINOR_VERSION"

if [[ ! -z $GITHUB_OUTPUT ]]; then
    echo "LATEST_MINOR_VERSION=$LATEST_MINOR_VERSION" >> $GITHUB_OUTPUT;
    echo "LATEST_PATCH_VERSION=$LATEST_PATCH_VERSION" >> $GITHUB_OUTPUT;
fi
