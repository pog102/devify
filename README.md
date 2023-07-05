# Devify [![Licence](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE) [![Paypal Donate](https://img.shields.io/badge/Donate-Paypal-2244dd.svg)](https://www.paypal.com/paypalme/ernisD)   [![AUR version](https://img.shields.io/aur/version/devify)](https://aur.archlinux.org/packages/devify)
![notification](https://raw.githubusercontent.com/pog102/devify/main/preview.png)
<br>
Devify is a device notification system that utilizes udev rules to monitor device connections and disconnections. It provides notifications when a device is connected or disconnected from Bluetooth and when it is plugged or unplugged from USB.

## Prerequisites

Make sure you have the following prerequisites installed on your system:

- libnotify

## 📦 Installation
### Manual
1. Clone the repository:

   ```bash
   git clone https://github.com/pog102/devify.git
   ```

2. Navigate to the project directory:

   ```bash
   cd devify
   ```

3. Install

     ```bash
     sudo make install
     ```
4. Reload the udev rules:

   ```bash
   sudo udevadm control --reload-rules
   ```
### AUR

```bash
paru -S devify
```
### Gentoo
First, enable the lemon-lime-overlay
```bash
eselect repository add lemon-lime-overlay git https://github.com/lima-limon-inc/lemon-lime-overlay.git
emaint sync -r lemon-lime-overlay
```
Then, install the package
```bash
emerge --ask devify

```

## Features
- [pywal](https://github.com/dylanaraps/pywal) support

## Credits:
- [Flaticon](https://www.flaticon.com/free-icon/webcam_5480222#) for the webcam icon
- [thenounproject](https://thenounproject.com/icon/gaming-mouse-1554876)  for the mouse icon
- [thenounproject](https://thenounproject.com/icon/xbox-one-controller-195039)  for the Xbox Controller icon
- [thenounproject](https://thenounproject.com/icon/game-controller-194080/)  for the PS4 Controller icon
- [thenounproject](https://thenounproject.com/icon/ps5-controller-4239781/)  for the PS5 COntroller icon

