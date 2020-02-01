#!/bin/bash
if [[ $1 -eq "build" ]]; then
    cp -r /src/* /build/
    cd /build
    dotnet restore
    dotnet publish -c Release -o /out
else
    exec "$@"
fi