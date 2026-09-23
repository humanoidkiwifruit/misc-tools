#!/bin/sh
sudo dnf upgrade -y
sudo dnf autoremove -y
sudo dnf clean all
flatpak update -y
flatpak uninstall --unused -y
rustup update
cargo install-update -a
uv tool upgrade --all
echo "Zed Editor updates itself"
