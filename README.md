# Axiom OS

**A unified operating system for AI-powered robots.** Axiom OS enables seamless integration of any AI model with any robot hardware, providing a standardized platform for developing and deploying intelligent robotic applications.

## 🌟 Features

- **Pre-configured ROS2 Humble Environment** - Full robotics middleware stack ready to use
- **LLM Integration** - Natural language control interface for robots via ROS-GPT
- **Multi-Robot Coordination** - Built-in support for coordinating multiple robots
- **Gazebo Simulation** - Test and validate robot behaviors in simulation
- **App Ecosystem Ready** - Framework for installing and managing robot applications
- **Open Source** - Community-driven development and extensibility

## 📋 Prerequisites

Before installing Axiom OS, ensure you have:

- **VirtualBox** 6.0 or later ([Download here](https://www.virtualbox.org/wiki/Downloads))
- **Minimum 4GB RAM** allocated to the VM (8GB recommended)
- **20GB available disk space**
- **Virtualization enabled** in BIOS (VT-x/AMD-V)

## 🚀 Quick Start Installation

### Method 1: Import OVA File (Recommended)

1. **Download Axiom OS**
   - Go to [Releases](https://github.com/Axiom-Robotics/AXIOM_OS/releases)
   - Download the latest `axiom-os-vX.X.X.ova` file

2. **Import into VirtualBox**
   
   **Using VirtualBox GUI:**
   - Open VirtualBox
   - Go to `File` → `Import Appliance`
   - Click `Choose` and select the downloaded `.ova` file
   - Review settings and click `Import`
   - Wait for import to complete

   **Using Command Line:**

3. **Configure VM Settings** (Recommended)
   - Right-click the VM → `Settings`
   - **System**: Base Memory 4096 MB (or more), Processors 2+ CPUs
   - **Display**: Video Memory 128 MB, Enable 3D Acceleration
   - **Network**: Adapter 1 set to Bridged Adapter

4. **Start Axiom OS**
   - Select the VM and click `Start`
   - **Login credentials:**
     - Username: `axiom`
     - Password: `axiom`
   - **Important:** Change password after first login with `passwd` command

## ⚙️ Post-Installation Setup

After booting into Axiom OS for the first time:

### 1. Update System Packages

     sudo apt update && sudo apt upgrade -y

### 2. Verify ROS2 Installation
### 2.1 Source ROS2 environment
      source /opt/ros/humble/setup.bash
### 2.2 Check ROS2 version
     ros2 --version
### 2.3 Test with a demo
     ros2 run demo_nodes_cpp talker
### 3. Verify Gazebo Simulation
### 3.1 Launch Gazebo
     gazebo
