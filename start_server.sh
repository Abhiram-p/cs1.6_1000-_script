#!/bin/bash

cd "$(dirname "$0")/cs16_server"

echo "[*] Starting CS 1.6 server on map aim_1000dollars (foreground mode)..."
echo "Press Ctrl+C to stop the server."

./hlds_run -game cstrike +map aim_1000dollars +maxplayers 10 -insecure -norestart -port 27015
