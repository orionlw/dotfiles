# 🏠 Personal Dotfiles

A collection of my personal configuration files and scripts for setting up a modern Linux development environment. This repository contains carefully crafted configurations for a Hyprland-based desktop setup with optimized workflows for development and daily use.

## 📋 Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Included Configurations](#included-configurations)
- [Customization](#customization)
- [License](#license)

## 🎯 Overview

This dotfiles repository provides a complete desktop environment configuration focused on:
- **Hyprland** - A dynamic tiling Wayland compositor
- **Productivity** - Streamlined workflows for development
- **Aesthetics** - Clean, modern interface with transparency effects
- **Performance** - Optimized configurations for smooth operation

## ✨ Features

- 🪟 **Hyprland Window Manager** - Dynamic tiling with smooth animations
- 🖥️ **Waybar Status Bar** - Custom modules for system monitoring
- 💻 **Alacritty Terminal** - Fast, GPU-accelerated terminal emulator
- ⚡ **Neovim (LazyVim)** - Modern Vim-based editor with extensive plugins
- 🐚 **Bash Configuration** - Enhanced shell with useful aliases and tools
- 🎨 **Cohesive Theming** - Consistent color scheme across all applications

## 📋 Prerequisites

Before using these dotfiles, ensure you have the following installed:

### Required Dependencies
- **Linux Distribution** - Arch Linux, CachyOS, or similar
- **Hyprland** - Wayland compositor
- **Waybar** - Status bar for Wayland
- **Alacritty** - Terminal emulator
- **Neovim** (>= 0.9.0) - Text editor
- **Git** - Version control
- **Bash** - Shell

### Optional Dependencies
- **GitHub CLI (`gh`)** - For GitHub Copilot integration
- **Rust/Cargo** - For additional tools (configured in PATH)
- **Python** - Required for some Waybar modules
- **Font** - A Nerd Font for proper icon display

### Installation Commands (Arch Linux)
```bash
# Install core dependencies
sudo pacman -S hyprland waybar alacritty neovim git bash

# Install optional dependencies
sudo pacman -S github-cli python
```

## 🚀 Installation

### Method 1: Manual Installation (Recommended)

1. **Clone the repository:**
   ```bash
   git clone https://github.com/orionlw/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Backup existing configurations:**
   ```bash
   # Backup existing files (recommended)
   mkdir -p ~/.config/backup
   cp ~/.bashrc ~/.config/backup/ 2>/dev/null || true
   cp -r ~/.config/alacritty ~/.config/backup/ 2>/dev/null || true
   cp -r ~/.config/hypr ~/.config/backup/ 2>/dev/null || true
   cp -r ~/.config/nvim ~/.config/backup/ 2>/dev/null || true
   cp -r ~/.config/waybar ~/.config/backup/ 2>/dev/null || true
   ```

3. **Install configurations:**
   ```bash
   # Copy dotfiles to home directory
   cp .bashrc ~/
   cp -r .config/* ~/.config/
   ```

4. **Source the new bash configuration:**
   ```bash
   source ~/.bashrc
   ```

### Method 2: Symlink Installation

For easier maintenance and updates:

```bash
# Clone repository
git clone https://github.com/orionlw/dotfiles.git ~/dotfiles

# Create symlinks
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.config/alacritty ~/.config/alacritty
ln -sf ~/dotfiles/.config/hypr ~/.config/hypr
ln -sf ~/dotfiles/.config/nvim ~/.config/nvim
ln -sf ~/dotfiles/.config/waybar ~/.config/waybar
```

### Method 3: Git Bare Repository (Advanced)

For version-controlled dotfiles management:

```bash
# Initialize bare repository
git clone --bare https://github.com/orionlw/dotfiles.git ~/.cfg

# Create alias for dotfiles management
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Checkout files
config checkout

# Hide untracked files
config config --local status.showUntrackedFiles no
```

## 📁 Included Configurations

### 🐚 Shell Configuration
- **`.bashrc`** - Enhanced Bash configuration with:
  - Colorized output for `ls` and `grep`
  - Custom prompt
  - Cargo/Rust PATH configuration
  - GitHub Copilot CLI integration
  - Git bare repository alias

### 🪟 Window Manager
- **Hyprland** (`.config/hypr/`) - Complete Wayland compositor setup:
  - `hyprland.conf` - Main configuration file
  - `config/animations.conf` - Smooth window animations
  - `config/decorations.conf` - Window decorations and transparency
  - `config/keybinds.conf` - Keyboard shortcuts and bindings
  - `config/input.conf` - Input device configuration
  - `config/monitor.conf` - Display setup
  - `config/windowrules.conf` - Application-specific rules
  - `scripts/` - Screenshot utilities and helper scripts

### 📊 Status Bar
- **Waybar** (`.config/waybar/`) - Customized status bar:
  - `config` - Main waybar configuration
  - `style.css` - Custom styling and themes
  - `modules/` - Custom modules for:
    - Spotify integration (`spotify.sh`)
    - Weather information (`weather.sh`)
    - Storage monitoring (`storage.sh`)
  - `mediaplayer.py` - Media player integration
  - `waybar.sh` - Launch script

### 💻 Terminal
- **Alacritty** (`.config/alacritty/alacritty.toml`) - Terminal configuration:
  - Transparency effects (80% opacity)
  - Custom color scheme
  - Optimized font rendering
  - Window sizing and decorations

### ⚡ Editor
- **Neovim** (`.config/nvim/`) - LazyVim-based configuration:
  - Modern Lua configuration
  - Extensive plugin ecosystem
  - Custom keymaps and options
  - Lazy plugin management
  - Language server support

## 🎨 Customization

### Personal Modifications

Before using these dotfiles, you may want to customize:

1. **User-specific paths** in `.bashrc`:
   ```bash
   # Update paths to match your username
   export PATH=$PATH:/home/YOUR_USERNAME/.cargo/bin
   alias config='/usr/bin/git --git-dir=/home/YOUR_USERNAME/.cfg/ --work-tree=/home/YOUR_USERNAME'
   ```

2. **Monitor configuration** in `.config/hypr/config/monitor.conf`
3. **Keybindings** in `.config/hypr/config/keybinds.conf`
4. **Waybar modules** in `.config/waybar/config` (enable/disable modules)
5. **Terminal opacity** in `.config/alacritty/alacritty.toml`

### Adding Your Own Configs

The modular structure makes it easy to add your own configurations:
- Add new config directories under `.config/`
- Update installation instructions for new dependencies
- Consider creating installation scripts for complex setups

## 🔧 Troubleshooting

### Common Issues

1. **Missing fonts** - Install a Nerd Font for proper icon display
2. **Waybar modules not working** - Check Python dependencies
3. **Hyprland crashes** - Verify all config files are valid
4. **Terminal opacity issues** - Ensure compositor supports transparency

### Logs and Debugging

- Hyprland logs: `journalctl -f _COMM=Hyprland`
- Waybar debugging: Start waybar manually from terminal
- Neovim issues: Check `:checkhealth` in Neovim

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Credits

- [LazyVim](https://github.com/LazyVim/LazyVim) - Neovim configuration framework
- [Hyprland](https://hyprland.org/) - Dynamic tiling Wayland compositor
- [Waybar](https://github.com/Alexays/Waybar) - Highly customizable status bar
- [Alacritty](https://alacritty.org/) - Cross-platform, GPU-accelerated terminal emulator

---

⭐ **Star this repository if you find it useful!**

🐛 **Issues and suggestions are welcome** - Feel free to open an issue or submit a pull request.