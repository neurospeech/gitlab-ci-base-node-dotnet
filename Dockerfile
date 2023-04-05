ARG FUNCTION_DIR="/function"

# Build Stage 1: Install aws-lambda-ric dependencies, npm install package.json dependencies
FROM node:18-buster

# AWS Lambda runtime dependencies
RUN apt-get update && \
    apt-get install -y \
        g++ \
        make \
        unzip \
        libcurl4-openssl-dev \
        autoconf \
        libtool \
        cmake

RUN apt-get update && \
    apt-get install -y libc6 libgcc1 libgcc-s1 libgssapi-krb5-2 libicu71 \
        liblttng-ust1 libssl3 libstdc++6 libunwind8 zlib1g

RUN apt-get update && \
    apt-get install -y dotnet-sdk-6.0

RUN npm install -g typescript @web-atoms/pack @web-atoms/ts-to-systemjs
