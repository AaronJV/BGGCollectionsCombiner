FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /build

# Copy csproj and restore as distinct layers
COPY src/*.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY ./src/ ./
RUN dotnet publish -c Release -o out

# Build nginx image with static content
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=build-env /build/out/BGGCollections/dist/ .
