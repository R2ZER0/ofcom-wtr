#!/bin/bash
set -euo pipefail

docker run -d --name wtrpg -e POSTGRES_PASSWORD=password -p 5432:5432 \
    -v $PWD/data/:/data/ \
    -v $PWD/.pgdata:/var/lib/postgresql/data/ \
    postgres:10.2
