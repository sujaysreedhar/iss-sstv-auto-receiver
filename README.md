# ISS SSTV Auto Receiver for Raspberry Pi

This project automates the process of recording and decoding SSTV (Slow Scan Television) images broadcast by the International Space Station (ISS) using a Raspberry Pi and an RTL-SDR dongle.

## 📡 Features

- Automatically detects when the ISS is overhead
- Records SSTV audio on 145.800 MHz
- Decodes images using QSSTV
- Runs on a Raspberry Pi with cron scheduling

## 🧰 Requirements

- Raspberry Pi 3/4 with Raspberry Pi OS
- RTL-SDR USB dongle
- VHF antenna (tuned to 145.800 MHz)
- Internet connection for setup

## 🚀 Setup

```bash
git clone https://github.com/sujaysreedhar/iss-sstv-auto-receiver.git
cd iss-sstv-auto-receiver
chmod +x install.sh
./install.sh
