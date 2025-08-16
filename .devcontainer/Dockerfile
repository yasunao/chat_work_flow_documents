# Base: official devcontainers Ruby image (3.3.x)
FROM mcr.microsoft.com/devcontainers/ruby:3.3

# Node & Yarn for JS/CSS build (optional if using importmap)
RUN apt-get update && apt-get install -y --no-install-recommends     nodejs npm &&     npm install --global yarn &&     rm -rf /var/lib/apt/lists/*

# PostgreSQL client
RUN apt-get update && apt-get install -y --no-install-recommends     postgresql-client &&     rm -rf /var/lib/apt/lists/*

# Japanese locale (optional)
RUN apt-get update && apt-get install -y locales &&     locale-gen ja_JP.UTF-8 &&     update-locale LANG=ja_JP.UTF-8
ENV LANG=ja_JP.UTF-8
