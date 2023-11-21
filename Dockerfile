FROM ubuntu:latest

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install curl \
    curl -sL "https://packages.cloud.google.com/apt/doc/apt-key.gpg" | gpg --dearmor -o /usr/share/keyrings/cloud.google.gpg \
    echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list \
    apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install wget unzip git dpkg-dev debhelper google-cloud-cli \
    apt-get clean && rm -rf /var/lib/apt/lists/*
