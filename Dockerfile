# Build Stage 1: Install aws-lambda-ric dependencies, npm install package.json dependencies
FROM ubuntu:22.10

# AWS Lambda runtime dependencies
RUN apt-get update && \
    apt-get install -y \
        g++ \
        make \
        unzip \
        libcurl4-openssl-dev \
        autoconf \
        libtool \
        cmake \
        curl

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash && \
    apt-get install -y nodejs

RUN apt-get update && \
    apt-get install -y dotnet-sdk-6.0

RUN npm install -g typescript @web-atoms/pack @web-atoms/ts-to-systemjs
