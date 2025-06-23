#!/bin/bash
set -e

echo "[*] Setting up Counter-Strike 1.6 LAN Server..."

# Step 1: Remove broken LLVM repo if it exists
if grep -rq "llvm-toolchain-xenial-19" /etc/apt/; then
  echo "[*] Removing broken LLVM repo..."
  sudo sed -i '/llvm-toolchain-xenial-19/d' /etc/apt/sources.list
fi

# Step 2: Update packages and install dependencies
echo "[*] Updating packages and installing dependencies..."
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y steamcmd lib32gcc1 lib32stdc++6 libc6-i386 screen

# Step 3: Create and enter server folder
mkdir -p cs16_server && cd cs16_server

# Step 4: Download CS 1.6 server
echo "[*] Downloading HLDS and CS 1.6 via SteamCMD..."
steamcmd +login anonymous \
         +force_install_dir "$PWD" \
         +app_update 90 validate \
         +quit

# Step 5: Copy map and config
echo "[*] Copying map and configs..."
cp -v ../maps/aim_1000dollars.bsp cstrike/maps/
cp -v ../server.cfg cstrike/
cp -v ../mapcycle.txt cstrike/

echo "[✔] Setup complete! Use './start_server.sh' to launch the server."

