FROM mcr.microsoft.com/devcontainers/ruby:3.2

ENV DEBIAN_FRONTEND=noninteractive

# 必要なシステムパッケージ (Postgres クライアント等)
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    postgresql-client \
    curl \
  && rm -rf /var/lib/apt/lists/*

# Ruby の基本ツール
RUN gem install bundler rails --no-document