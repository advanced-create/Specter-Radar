# 📡 SpecterSense: ESP32-S3 Through-Wall mmWave Biometric Radar

> A handheld, standalone biometric radar scanner powered by an ESP32-S3 and a 24 GHz FMCW radar sensor to detect human presence, micro-movement, and respiration through non-metallic barriers.

---

## 💡 Overview

**SpecterSense** is a dedicated, portable embedded hardware instrument built from the ground up on a custom carrier PCB. 

Unlike systems relying on bulky, off-the-shelf Linux single-board computers, SpecterSense is an **authentic embedded hardware project**. It couples high-frequency RF sensing with an ESP32-S3 dual-core microcontroller to perform on-device serial parsing and visual radar mapping on a 1.69" IPS display, all housed in a pocket-sized 3D-printed enclosure.

### Key Capabilities
- **Through-Wall Sensing:** Detects human targets through interior drywall, plywood, glass, and doors using 24 GHz FMCW millimeter waves.
- **Micro-Motion & Breathing Tracking:** Captures subtle sub-millimeter chest wall movements (respiration) even when the person is sitting or standing still.
- **Hardware Radar Scope Display:** Drives an ST7789 IPS LCD at 240×280 over high-speed SPI to display real-time radial sweeps, distance gates (0.75 m – 6.0 m), and target energy levels.
- **Self-Contained Power Management:** Powered by an internal 3.7V 1000mAh LiPo battery with integrated Type-C charging, low-dropout regulation, and safe discharge protection.

---

## 🛠️ Hardware Architecture & System Design
