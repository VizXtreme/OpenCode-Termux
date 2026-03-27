#!/bin/bash
# PocketCode Setup Script
# One command to setup AI coding agents on Android

set -e

echo "🚀 PocketCode Setup Starting..."
echo ""

# Step 1: Update Termux
echo "📦 Updating Termux..."
pkg update -y
pkg upgrade -y

# Step 2: Install proot-distro
echo "📦 Installing Linux container..."
pkg install proot-distro -y
proot-distro install debian

# Step 3: Setup inside Debian
echo "⚙️ Setting up development environment..."
proot-distro login debian -- bash -c '
  apt update
  apt install curl git build-essential python3 -y
  curl -fsSL https://deb.nodesource.com/setup_20.x | bash
  apt install nodejs -y
  curl -fsSL https://opencode.ai/install | bash
  echo "alias opencode-web=\"opencode web --hostname 127.0.0.1 --port 4096\"" >> ~/.bashrc
'

# Step 4: Create shortcut alias
echo "🔗 Creating shortcuts..."
echo 'alias pocketcode="proot-distro login debian"' >> ~/.bashrc
source ~/.bashrc

# Step 5: Source bashrc to make alias available immediately
source ~/.bashrc

echo ""
echo "✅ Setup Complete!"
echo ""
echo "📱 Quick Start:"
echo "   Type: pocketcode"
echo "   Then: opencode (terminal) or opencode-web (browser)"
echo ""
echo "📁 To edit files visually, install Acode from Play Store"
echo ""
