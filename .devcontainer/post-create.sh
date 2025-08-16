#!/usr/bin/env bash
set -euo pipefail

# Install Bundler / Rails
gem install bundler --no-document
gem install rails --no-document

# Persist gems into repository workspace (not container)
bundle config set path 'vendor/bundle'

# Optional git config
git config --global pull.rebase false

echo "post-create complete."
