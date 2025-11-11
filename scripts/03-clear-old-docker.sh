#!/usr/bin/env bash
echo "🧹 Removing old Docker data directories..."
sudo rm -rf /var/lib/docker /var/lib/containerd
