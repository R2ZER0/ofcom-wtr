#!/bin/bash
set -euo pipefail

docker run --name wtrpg -e POSTGRES_PASSWORD=password -p 5432:5432 postgres:10.2
