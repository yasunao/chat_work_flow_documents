FROM mcr.microsoft.com/devcontainers/ruby:3.2

# Install system packages useful for Rails development, Node/Yarn for assets, and JupyterLab (optional)
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    build-essential \
    libpq-dev \
    postgresql-client \
    nodejs \
    npm \
    python3 \
    python3-pip \
  && npm install -g yarn || true \
  && gem install bundler rails --no-document \
  && pip3 install --no-cache-dir jupyterlab \
  && rm -rf /var/lib/apt/lists/*
