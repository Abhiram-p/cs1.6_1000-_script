##🕹️ Counter-Strike 1.6 LAN Server Auto-Setup

A portable, ready-to-use Counter-Strike 1.6 LAN server with one-click setup.No config headaches. Just clone, install, and play.

##✅ Features

Fully automated installation via SteamCMD

Comes with a custom map: aim_1000dollars

Works on LAN (-insecure mode, no Steam login needed)

No GUI required – runs directly from terminal

Runs in the foreground for easy monitoring

##📦 Requirements

Ubuntu 16.04+ (or similar Debian-based distro)

bash, steamcmd, screen, lib32gcc1, lib32stdc++6

All dependencies are automatically installed by the setup script.

##🚀 How to Use

1. Clone the Repository

```bash
git clone https://github.com/yourusername/cs16-server-autosetup.git
cd cs16-server-autosetup
````

### 2. Run the Installer

```bash
chmod +x install.sh
./install.sh
```

This will:

* Install required dependencies
* Download CS 1.6 server via SteamCMD
* Place the included map and server config
* Get everything ready for launch

### 3. Start the Server

```bash
chmod +x start_server.sh
./start_server.sh
```

You'll see the server console. It runs in the foreground.
Press `Ctrl+C` anytime to stop the server.

---

## 🗺️ Included Map

**aim\_1000dollars** – a custom close-combat map included in `maps/`.

---

## 🌐 Connect to Server

On a LAN-connected client, open CS 1.6 and run in the console:

```plaintext
connect <your-server-ip>:27015
```

To find your IP on the server machine:

```bash
hostname -I
```

---

## 📁 Project Structure

```
cs16-server-autosetup/
├── install.sh           # Setup script (run once)
├── start_server.sh      # Start the server manually
├── server.cfg           # Server settings
├── mapcycle.txt         # Map rotation
└── maps/
    └── aim_1000dollars.bsp
```

---

## 📘 Notes

* `-insecure` is used to bypass VAC/Steam validation for local play
* You can add more maps to the `maps/` folder and edit `mapcycle.txt`
* Make sure port `27015` is open if hosting across networks

---

## 🙌 Credits

* Map: [aim\_1000dollars](https://gamebanana.com/mods/93339)
* SteamCMD / HLDS from Valve
