#!/bin/bash

# build_apk.sh
# This script builds an APK for a specified flavor.
# Usage: ./build_apk.sh <flavor>

# Check if a flavor argument is provided
if [ -z "$1" ]; then
    echo "Error: No flavor specified."
    echo "Usage: ./build_apk.sh <flavor>"
    exit 1
fi

FLAVOR=$1

# Navigate to the Flutter project directory
cd /path/to/your/flutter/project || exit

# Build the APK for the specified flavor
flutter build apk --flavor "$FLAVOR"

# Check if the build was successful
if [ $? -eq 0 ]; then
    echo "APK built successfully for flavor: $FLAVOR"
else
    echo "Failed to build APK for flavor: $FLAVOR"
    exit 1
fi