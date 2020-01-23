#!/bin/bash
set -e # exit if anything returns a non-zero status
until dotnet ef database update; do
>&2 echo "SQL Server is starting up"
sleep 1
done
