#!/bin/bash
# Harden SSH configuration

echo "Hardening SSH configuration..."

# Disable root login and change port
sudo sed -i 's/PermitRootLogin yes/PermitRootLogin no/' /etc/ssh/sshd_config
sudo sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config

# Restrict SSH protocol versions
echo "Protocol 2" | sudo tee -a /etc/ssh/sshd_config

# Disable password authentication
echo "PasswordAuthentication no" | sudo tee -a /etc/ssh/sshd_config

# Restart SSH service
sudo systemctl restart sshd
