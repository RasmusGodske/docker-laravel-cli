#!/bin/bash

set -e

if [ "$#" -eq 0 ]; then
    echo "Laravel CLI Bootstrap Container"
    echo "==============================="
    echo ""
    echo "This container provides Laravel CLI in a containerized environment."
    echo ""
    echo "Usage examples:"
    echo "  docker run -v \$(pwd):/workspace laravel-bootstrap new my-app"
    echo "  docker run -v \$(pwd):/workspace laravel-bootstrap new my-app --using=rasmusgodske/laravel-sail-vue-starterkit"
    echo "  docker run -v \$(pwd):/workspace laravel-bootstrap --help"
    echo ""
    exit 1
fi

echo "Running: laravel $*"
echo ""

laravel "$@"