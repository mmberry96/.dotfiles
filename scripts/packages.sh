#!/bin/bash

set -euo pipefail

echo "Activate sudo?"
sudo echo "Sudo activated!"
echo

# Install apt packages
PACKAGES=(
  "curl"
  "git"
  "stow"
  "zsh"
)

sudo apt-get update
sudo apt-get install -y "${PACKAGES[@]}"

# Install mise
curl -fsSL https://mise.run | sh
