#!/bin/bash

# Update package index
sudo apt-get update

# Install Docker
sudo apt-get install -y docker.io

# Install Git
sudo apt-get install -y git

# Start Docker service
# sudo systemctl start docker

# Enable Docker service to start on boot
# sudo systemctl enable docker

# Add user to Docker group (optional)
# sudo usermod -aG docker $USER
