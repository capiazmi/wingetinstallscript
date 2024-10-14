# Auto install script using winget

# Function to install an application if it's not already installed
function Install-IfNotInstalled {
    param (
        [string]$PackageId,
        [string]$AppName
    )

    Write-Host "Checking if $AppName is already installed..."
    
    $installedApp = winget list | Select-String -Pattern $AppName

    if (-not $installedApp) {
        Write-Host "Installing $AppName..."
        winget install --id $PackageId --silent --accept-package-agreements --accept-source-agreements
    } else {
        Write-Host "$AppName is already installed."
    }
}

# Install applications
Install-IfNotInstalled '7zip.7zip' '7-Zip'
Install-IfNotInstalled 'Blizzard.BattleNet' 'Battle.net'
Install-IfNotInstalled 'Bitdefender.Bitdefender' 'Bitdefender'
Install-IfNotInstalled 'iterate.Cyberduck' 'Cyberduck'
Install-IfNotInstalled 'Discord.Discord' 'Discord'
Install-IfNotInstalled 'dbeaver.dbeaverce' 'DBeaver'
Install-IfNotInstalled 'ElectronicArts.EADesktop' 'EA app'
Install-IfNotInstalled 'EpicGames.EpicGamesLauncher' 'Epic Games Launcher'
Install-IfNotInstalled 'Google.Chrome' 'Google Chrome'
Install-IfNotInstalled 'Google.Drive' 'Google Drive'
Install-IfNotInstalled 'CPUID.HWMonitor' 'HWMonitor'
Install-IfNotInstalled 'Kleopatra.Kleopatra' 'Kleopatra'
Install-IfNotInstalled 'Microsoft.Office' 'Microsoft Office 365'
Install-IfNotInstalled 'Mobatek.MobaXterm' 'MobaXterm'
Install-IfNotInstalled 'NVIDIACorporation.NVIDIAControlPanel' 'NVIDIA Drivers'
Install-IfNotInstalled 'Notepad++.Notepad++' 'Notepad++'
Install-IfNotInstalled 'Valve.Steam' 'Steam'
Install-IfNotInstalled 'Transmission.TransmissionRemoteGui' 'Transmission Remote GUI'
Install-IfNotInstalled 'Ubisoft.Uplay' 'Ubisoft Connect'
Install-IfNotInstalled 'Microsoft.VisualStudioCode' 'Visual Studio Code'
Install-IfNotInstalled '9NKSQGP7F2NH' 'WhatsApp'
Install-IfNotInstalled 'WinSCP.WinSCP' 'WinSCP'





Write-Host "All requested applications have been processed."
