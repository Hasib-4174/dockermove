#!/usr/bin/env bash

PM=$(cat /tmp/dockermove-pm)
echo "Using $PM to install/update Docker..."

if ! command -v docker &>/dev/null; then
  echo "🔹 Docker not found, installing..."
  case "$PM" in
    apt) sudo apt update && sudo apt install -y docker.io ;;
    pacman) sudo pacman -Sy --noconfirm docker ;;
    dnf) sudo dnf install -y docker ;;
    yay|paru) $PM -S --noconfirm docker ;;
  esac
else
  echo "🔹 Docker found, updating..."
  case "$PM" in
    apt) sudo apt update && sudo apt upgrade -y docker.io ;;
    pacman) sudo pacman -Syu --noconfirm docker ;;
    dnf) sudo dnf upgrade -y docker ;;
    yay|paru) $PM -Syu --noconfirm docker ;;
  esac
fi
