#!/usr/bin/env bash

echo "👤 Adding current user to docker group..."
sudo usermod -aG docker "$USER"
echo "Run 'newgrp docker' to apply changes in current shell."
