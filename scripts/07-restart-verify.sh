#!/usr/bin/env bash
echo "♻️ Restarting Docker service..."
sudo systemctl daemon-reload
sudo systemctl start docker

echo "🔍 Verifying Docker root directory..."
docker info | grep "Docker Root Dir"
