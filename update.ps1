$InstallDir = "$env:LOCALAPPDATA\ToG"

Write-Host ""
Write-Host "Updating ToG..."
Write-Host ""

Invoke-WebRequest `
    -Uri "https://raw.githubusercontent.com/tog-keyz/tog-system/main/opentog.bat" `
    -OutFile "$InstallDir\opentog.bat"

Write-Host ""
Write-Host "==================================="
Write-Host " ToG updated successfully!"
Write-Host "==================================="
Write-Host ""
Write-Host "Restart opentog to use the new version."
