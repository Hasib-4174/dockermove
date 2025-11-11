#!/usr/bin/env bash

PM=""
if command -v apt &>/dev/null; then
  PM="apt"
elif command -v pacman &>/dev/null; then
  PM="pacman"
elif command -v dnf &>/dev/null; then
  PM="dnf"
elif command -v yay &>/dev/null; then
  PM="yay"
elif command -v paru &>/dev/null; then
  PM="paru"
else
  echo "❌ No supported package manager found!"
  exit 1
fi

echo "✅ Detected package manager: $PM"
echo "$PM" > /tmp/dockermove-pm
