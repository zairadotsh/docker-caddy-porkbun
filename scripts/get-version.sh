#!/bin/bash

LATEST_MAJOR_VERSION=$(
    cat Dockerfile | \
    head -n 1 | \
    grep -E -oh '[0-9](\.[0-9](\.[0-9])?)?$'
)

LATEST_MINOR_VERSION=$(
    echo $LATEST_MAJOR_VERSION | \
    grep -E -oh '[0-9](\.[0-9])'
)

echo "Latest minor version: $LATEST_MAJOR_VERSION"
echo "Latest major version: $LATEST_MINOR_VERSION"

if [[ ! -z $GITHUB_OUTPUT ]]; then
    echo "LATEST_MAJOR_VERSION=$LATEST_MAJOR_VERSION" >> $GITHUB_OUTPUT
    echo "LATEST_MINOR_VERSION=$LATEST_MINOR_VERSION" >> $GITHUB_OUTPUT
fi
