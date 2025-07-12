#!/bin/bash

set -e

if [ "$#" -eq 0 ]; then
    echo "Laravel CLI Bootstrap Container"
    echo "==============================="
    echo ""
    echo "This container provides Laravel CLI in a containerized environment."
    echo ""
    echo "Usage examples:"
    echo "  docker run -v \$(pwd):/workspace docker-laravel-cli laravel new my-app"
    echo "  docker run -v \$(pwd):/workspace docker-laravel-cli laravel new my-app --using=your-username/your-starter-kit"
    echo "  docker run -v \$(pwd):/workspace docker-laravel-cli laravel --help"
    echo ""
    exit 1
fi

echo "Running: $*"
echo ""

"$@"

if [ -n "$USER_ID" ] && [ -n "$GROUP_ID" ]; then
    echo "Fixing file ownership..."
    chown -R $USER_ID:$GROUP_ID /workspace/*
fi