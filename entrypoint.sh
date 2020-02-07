#!/bin/sh
database_url=$1

if [ -n "$database_url" ]; then
    pgcli "$database_url"
else
    echo "Database URL missing"
    echo "Database URL format: postgres://USER:PASSWORD@HOST:PORT/DATABASE"
fi