#!/usr/bin/env bash
NEWROOT="$HOME/.docker-root"

echo "🔒 Setting correct permissions..."
sudo chown -R root:root "$NEWROOT"
