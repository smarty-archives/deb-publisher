FROM ubuntu:latest

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y dpkg-dev dh-systemd curl wget unzip rubygems && \
  gem install deb-s3 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
