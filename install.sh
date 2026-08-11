#!/bin/bash

set -euo pipefail

cd "$(dirname "$0")"

echo "Installing packages..."
./scripts/packages.sh

echo "Changing shell to Zsh..."
chsh -s "$(command -v zsh)"
echo

echo "Creating symlinks..."
stow .
echo

echo "Installing Mise packages..."
$(command -v mise) install --yes

echo "Done, restart shell"
