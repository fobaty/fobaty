#!/bin/bash
# Install and configure rkhunter

echo "Installing and configuring rkhunter..."

# Install rkhunter
sudo apt install -y rkhunter

# Update rkhunter database
sudo rkhunter --update

# Run initial scan
sudo rkhunter --checkall
