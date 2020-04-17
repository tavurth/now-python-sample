#!/usr/bin/env bash

if [ $# -lt 1 ]; then
    echo "./dev.sh API_NAME"
    echo
    echo "    Example:"
    echo "      ./dev.sh my-cool-api"
    exit 1
fi

# Load environment variables if any
if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
fi

nodemon \
    --exec "python3" __init__.py $@ \
    --watch ./__init__.py \
    --watch api \
    --watch src
