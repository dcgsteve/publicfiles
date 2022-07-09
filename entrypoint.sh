#!/bin/sh

set -e

if [[ -z "$PGID" ]]; then
    echo "ERROR: please set PGID" >&2
    exit 1
fi
if [[ -z "$PUID" ]]; then
    echo "ERROR: please set PUID" >&2
    exit 1
fi

addgroup -g "$PGID" abc
adduser -u "$PUID" -D -G "abc" -g "" abc

su - "abc" -c "/usr/bin/art serve -l -p 8000 /files"
