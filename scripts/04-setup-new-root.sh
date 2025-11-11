#!/usr/bin/env bash
NEWROOT="$HOME/.docker-root"
CONFIG="/etc/docker/daemon.json"

echo "📁 Creating new Docker root at: $NEWROOT"
mkdir -p "$NEWROOT"

echo "⚙️ Setting new Docker data-root in $CONFIG"
sudo mkdir -p /etc/docker
sudo tee "$CONFIG" >/dev/null <<EOF
{
  "data-root": "$NEWROOT"
}
EOF
