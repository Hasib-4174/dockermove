#!/usr/bin/env bash
echo "🛑 Stopping Docker service..."
sudo systemctl stop docker || true
