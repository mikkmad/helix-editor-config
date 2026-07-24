#!/usr/bin/env bash

set -euo pipefail

echo
echo "Updating Package Database..."
sudo dnf upgrade -y
echo

echo
echo "Installing Development Packages..."
echo
sudo dnf install -y \
  helix \
  git \
  curl \
  wget \
  gcc \
  gcc-c++ \
  clang \
  clang-tools-extra \
  clang-format \
  cmake \
  make \
  gdb \
  lldb \
  python3 \
  uv \
  nodejs \
  rust \
  cargo \
  rust-analyzer \
  jdtls \
  zip \
  unzip

echo
echo "Installing Python Tools..."
echo
uv tool install black
uv tool install basedpyright

echo
echo "Installing SDKMAN!..."
echo

if [[ ! -d "$HOME/.sdkman" ]]; then
  curl -s "https://get.sdkman.io" | bash
  echo "Remember to install one or more SDK(s) of choice."
  echo "See: https://sdkman.io/sdks/ for SDKs, and"
  echo "https://sdkman.io/usage/ for information on usage."
  echo " --> Before installing any SDKs, restart your terminal."
else
  echo "SDKMAN! is already installed. Skipping..."
fi

echo 
echo "Installation and setup complete!"
echo 
echo "Installed:"
echo "--> Helix Terminal Editor"
echo "--> Git"
echo "--> cURL"
echo "--> wget"
echo "--> gcc and gcc-c++"
echo "--> clang, clang-format and clangd (via clang-tools-extra)"
echo "--> cmake and make"
echo "--> gdb and lldb for debugging C/C++ programs"
echo "--> python 3 and UV for managing python packages instead of pip"
echo "--> nodejs and npm for installing LSPs for Helix"
echo "--> Rust and Cargo"
echo "--> zip / unzip, needed to install SDKMAN!"
echo "--> SDKMAN! for handling Java SDKs, and `jdtls` for the LSP server."
