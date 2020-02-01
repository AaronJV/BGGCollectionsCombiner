FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /build
COPY docker-entrypoint.sh .
ENTRYPOINT /build/docker-entrypoint.sh
CMD build