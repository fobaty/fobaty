#!/bin/bash
# Update and upgrade the system

echo "Updating and upgrading the system..."
sudo apt update && sudo apt upgrade -y
sudo apt autoremove -y
sudo apt clean
