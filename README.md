# Devify [![Licence](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE) [![Paypal Donate](https://img.shields.io/badge/Donate-Paypal-2244dd.svg)](https://www.paypal.com/paypalme/ernisD)   [![AUR version](https://img.shields.io/aur/version/devify)](https://aur.archlinux.org/packages/devify)
![notification](https://raw.githubusercontent.com/pog102/devify/main/preview.png)
<br>
A script that utilizes Rofi, a window switcher, application launcher, and dmenu replacement, to display a list of the latest episodes from the "Trast Taste" podcast.
## Prerequisites

Make sure you have the following prerequisites installed on your system:

- libnotify

## Installation
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
