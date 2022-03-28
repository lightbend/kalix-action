#!/bin/sh

set -e

## Set the refresh token and project ID
sh -c "kalix config set refresh-token $token"
sh -c "kalix config set project $project"

## Run the commands
for cmd in "$@"; do
    echo "Running: '$cmd'"
    if sh -c "kalix $cmd"; then
        echo "Success!"
    else
        exit_code=$?
        echo "Failure: '$cmd' exited with $exit_code"
        exit $exit_code
    fi
done