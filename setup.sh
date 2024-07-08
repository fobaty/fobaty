#!/bin/bash
# Main setup script for configuring an Ubuntu server with an emphasis on security

echo "Starting Ubuntu server setup..."

# Update and upgrade system
./scripts/update_and_upgrade.sh

# Harden SSH
./scripts/harden_ssh.sh

# Install and configure firewall
./scripts/install_firewall.sh

# Install Fail2Ban
./scripts/install_fail2ban.sh

# Install rkhunter
./scripts/install_rkhunter.sh

echo "Setup complete! Please review the changes and reboot your server."
