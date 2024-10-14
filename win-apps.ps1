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
Install-IfNotInstalled 'dbeaver.dbeaverce' 'DBeaver'
Install-IfNotInstalled 'Microsoft.VisualStudioCode' 'Visual Studio Code'
Install-IfNotInstalled 'WinSCP.WinSCP' 'WinSCP'
Install-IfNotInstalled 'Mobatek.MobaXterm' 'MobaXterm'
Install-IfNotInstalled 'Notepad++.Notepad++' 'Notepad++'
Install-IfNotInstalled 'Valve.Steam' 'Steam'
Install-IfNotInstalled 'Blizzard.BattleNet' 'Battle.net'
Install-IfNotInstalled '9NKSQGP7F2NH' 'WhatsApp'
Install-IfNotInstalled 'Bitwarden.Bitwarden' 'Bitwarden'

Write-Host "All requested applications have been processed."
