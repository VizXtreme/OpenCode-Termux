# 🚀 PocketCode Setup Script

A one-command setup script to transform your Android device (via Termux) into a powerful AI-powered coding environment using a Debian container, Node.js, Python, and OpenCode.

---

## 📱 Overview

**PocketCode** automates the installation and configuration of a complete development environment inside Termux. It sets up:

- 🐧 Debian (via proot-distro)
- 🟢 Node.js (v20)
- 🐍 Python 3
- 🛠️ Build tools (git, curl, build-essential)
- 🤖 OpenCode (AI coding agent)
- 🌐 Web interface for OpenCode

---

## ⚡ Features

- One-command setup
- Fully isolated Linux environment (Debian container)
- AI-powered coding via OpenCode
- Web + terminal access
- Easy-to-use shortcuts and aliases

---

## 🧰 Prerequisites

Before running the script, make sure you have:

- ✅ Android device
- ✅ Termux installed (from F-Droid, recommended)
- ✅ Stable internet connection

---

## 📦 Installation

### Run the script
Run the `setup.sh`script inside Termux:

```bash
pkg install git -y && git clone https://github.com/VizXtreme/OpenCode-Termux.git && bash OpenCode-Termux/setup.sh
```
