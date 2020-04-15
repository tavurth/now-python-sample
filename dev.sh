#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo "./dev.sh API_NAME"
    echo
    echo "    Example:"
    echo "      ./dev.sh my-cool-api"
    exit 1
fi

nodemon \
    --exec "python3" __init__.py $@ \
    --watch ./__init__.py \
    --watch api \
    --watch src
