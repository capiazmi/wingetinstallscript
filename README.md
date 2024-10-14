# Automated Software Installation Script

This repository contains two scripts (Batch and PowerShell) to automate the installation of common software using `winget`, the Windows package manager. These scripts are designed to streamline the process of setting up a Windows machine with essential applications.

## Scripts Overview

### 1. Batch Script (`install_apps.bat`)

This batch script installs the following software:

- DBeaver
- Visual Studio Code
- WinSCP
- MobaXterm
- Notepad++
- Steam
- Battle.net
- Ubisoft Connect
- EA App
- Epic Games Launcher
- Google Chrome
- Google Drive
- Discord
- WhatsApp
- Cyberduck
- 7-Zip
- Transmission Remote GUI
- Bitdefender
- HWMonitor
- Microsoft Office 365
- NVIDIA Drivers

#### Usage

1. Clone this repository or download the script.
2. Open **Command Prompt** as Administrator.
3. Navigate to the directory where you saved the script:
    ```batch
    cd path\to\your\script
    ```
4. Run the script:
    ```batch
    install_apps.bat
    ```

The script will automatically check for each application's availability and install it using `winget` if it's not already installed.

### 2. PowerShell Script (`install_apps.ps1`)

This PowerShell script performs the same function as the batch script but allows for more flexibility, such as checking if an application is already installed before proceeding with installation.

#### Usage

1. Clone this repository or download the script.
2. Open **PowerShell** as Administrator.
3. Navigate to the directory where you saved the script:
    ```powershell
    cd path\to\your\script
    ```
4. Run the script:
    ```powershell
    .\install_apps.ps1
    ```

### Applications Installed

Both scripts install the following applications:

- **DBeaver**: Database management tool
- **Visual Studio Code**: Source code editor
- **WinSCP**: File transfer utility
- **MobaXterm**: Remote computing software
- **Notepad++**: Text editor
- **Steam**: Game distribution platform
- **Battle.net**: Game distribution platform (Blizzard)
- **Ubisoft Connect**: Ubisoft game platform
- **EA App**: EA game platform
- **Epic Games Launcher**: Epic Games distribution platform
- **Google Chrome**: Web browser
- **Google Drive**: Cloud storage
- **Discord**: Communication app
- **WhatsApp**: Messaging app
- **Cyberduck**: File transfer utility
- **7-Zip**: File archiver
- **Transmission Remote GUI**: BitTorrent client remote control
- **Bitdefender**: Security software
- **HWMonitor**: Hardware monitoring tool
- **Microsoft Office 365**: Office productivity suite
- **NVIDIA Drivers**: Latest NVIDIA graphics drivers

### Requirements

- **Windows 10/11**
- **winget** (Windows Package Manager) installed
- Administrator privileges to install software

### Customizing the Scripts

You can easily add or remove applications from either script by editing the relevant sections. Both scripts use `winget` to install applications, and you can find package IDs by running:

```batch
winget search <application-name>
