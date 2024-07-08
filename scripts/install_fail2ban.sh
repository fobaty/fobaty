#!/bin/bash
# Install and configure Fail2Ban

echo "Installing and configuring Fail2Ban..."

# Install Fail2Ban
sudo apt install -y fail2ban

# Create local configuration
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local
sudo sed -i 's/\[sshd\]/\[sshd\]\nenabled = true/' /etc/fail2ban/jail.local

# Restart Fail2Ban service
sudo systemctl restart fail2ban
