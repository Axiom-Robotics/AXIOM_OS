# Axiom OS

**A unified operating system for AI-powered robots.** Axiom OS enables seamless integration of any AI model with any robot hardware, providing a standardized platform for developing and deploying intelligent robotic applications.

<img width="1279" height="795" alt="image" src="https://github.com/user-attachments/assets/16ad3f60-aea6-4f02-8d8a-3ad907435a82" />

   
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
##  4. 🛒 Axiom OS Robot App Store

Axiom OS includes an integrated **robot app store** that lets you discover, install, update, and manage skills and behaviors for your robots without manually handling packages or dependencies. Apps are packaged as modular capabilities (navigation, perception, manipulation, multi‑robot coordination, etc.) that plug into the Axiom OS runtime and ROS2 ecosystem.


<img width="1279" height="649" alt="image" src="https://github.com/user-attachments/assets/3b9d53a2-7b1b-4b0b-9d24-4f9d771a6e8c" />


##  4.1. 🤖 Robot Selection Menu

**Select your favorite robot and test them in simulated environments without hassle using Axiom's App Store.**

The Robot Selection Menu makes it incredibly easy to switch between different robots, configure them automatically, and start experimenting—all without touching config files or environment variables.


<img width="1169" height="533" alt="image" src="https://github.com/user-attachments/assets/b35a9fec-144f-4f86-8397-9d712c8019db" />


## 🎮 Managing Your Robot Fleet

Axiom OS provides an intuitive interface for managing all your robots—whether they're physical hardware or simulated in Gazebo.

<img width="1257" height="612" alt="image" src="https://github.com/user-attachments/assets/664cd5ca-cc01-4e8b-a7ab-cad320f39818" />

The dashboard shows all registered robots with key information at a glance:
- **Robot name** and avatar icon (e.g., "wrwerwer" - UR5 manipulator)
- **Model type** (UR5, TurtleBot3, custom robots)
- **IP Address** for network connection (192.168.1.100)
- **Location** tag (Office, Warehouse, Lab, etc.)
- **Status indicator** (Inactive/Active/Connected)
- **Description** of the robot's purpose ("New robot for patrolling")


## ⚙️ Configuring a New Robot



<img width="1254" height="574" alt="image" src="https://github.com/user-attachments/assets/1c82278e-4a1c-49c5-8f4f-ee2edf9b345e" />




Click **"+ Add Robot"** to register a new robot through the configuration interface [file:25]:

### Configuration Form

The setup wizard collects essential information:

1. **Robot Name** - Enter a friendly name (e.g., "Sam")
2. **Robot Model** - Select from dropdown (UR5, TurtleBot3, etc.)
3. **IP Address** - Network address for connection (e.g., 192.168.1.128)
4. **Location** - Where the robot is deployed (e.g., "Office")
5. **Description** - Optional notes about the robot's purpose (e.g., "Sorter robot")

Click **"Add Robot"** to register it to your fleet.


## 🚀 Launching Robots in Gazebo And Robot Specifications


<img width="1209" height="588" alt="image" src="https://github.com/user-attachments/assets/f02e1512-c221-4bbd-9478-769baba3655a" />



After adding a robot, click **"View Details"** to access the robot control panel:

### Robot Details View

The details page displays:

**Robot Information:**
- Robot name and type (e.g., "Sam" - Manipulator)
- Model (UR5) and IP address (192.168.1.128)
- Current status (Inactive/Active)

**Robot Specifications:**
- Dimensions (e.g., 149×149×188mm)
- Weight and technical specs
- Hardware capabilities

**Performance Metrics:**
- Uptime percentage (98.2%)
- CPU temperature (47°C)
- Real-time health monitoring

**Launch Controls:**

<img width="986" height="519" alt="image" src="https://github.com/user-attachments/assets/82bf7508-7213-46d9-b6e3-0c5cafcdd292" />

- **🚀 Launch in Gazebo** - Start robot in simulation environment
- **🗑️ Delete Robot** - Remove from fleet

<img width="974" height="580" alt="image" src="https://github.com/user-attachments/assets/0c77f0da-c68c-4c50-a9a7-4e0b6a038a77" />



Click **"Launch in Gazebo"** to spawn your robot in the simulation environment and start working with it immediately without confusing and tendious gazebo simulation setup !!!

##  5. 🤖💬 ROSGPT

ROSGPT is a natural language interface that connects LLMs to real robots and simulations letting users to control robots just by talking to them, without writing any custom ROS code or low-level controllers.It sits between large language models and ROS2, translating human intent into safe, structured robot commands.

##  5.1. How It Works

The user sends a natural language instruction through a chat UI or API.

ROSGPT passes that instruction, plus robot context and capabilities, to an LLM.

The LLM responds in a constrained, machine-readable format (an action plan, JSON, or code-like structure), instead of freeform prose.​

ROSGPT parses that response with a robot-specific “parser” module (e.g., TurtleBot3 parser, manipulator parser) and turns it into ROS2 messages, service calls, or launch commands.​

The robot executes the resulting commands, and ROSGPT can stream back status or feedback as natural language.
