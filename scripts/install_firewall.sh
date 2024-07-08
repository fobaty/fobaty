#!/bin/bash
# Install and configure UFW firewall

echo "Installing and configuring UFW firewall..."

# Install UFW
sudo apt install -y ufw

# Set up default rules
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH on the custom port
sudo ufw allow 2222/tcp

# Enable UFW
sudo ufw enable
