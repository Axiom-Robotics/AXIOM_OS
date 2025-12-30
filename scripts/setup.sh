#!/bin/bash
# Axiom OS Post-Installation Setup Script

echo "Setting up Axiom OS..."

# Source ROS2
source /opt/ros/humble/setup.bash

# Update packages
sudo apt update

echo "Setup complete!"
