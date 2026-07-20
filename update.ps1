$InstallDir = "$env:LOCALAPPDATA\ToG"

Write-Host ""
Write-Host "==================================="
Write-Host "      Updating ToG..."
Write-Host "==================================="
Write-Host ""

# Tải opentog.bat
Invoke-WebRequest `
    -Uri "https://raw.githubusercontent.com/tog-keyz/tog-system/main/opentog.bat" `
    -OutFile "$InstallDir\opentog.bat"

# Tự cập nhật update.ps1
Invoke-WebRequest `
    -Uri "https://raw.githubusercontent.com/tog-keyz/tog-system/main/update.ps1" `
    -OutFile "$InstallDir\update.ps1"

Write-Host ""
Write-Host "==================================="
Write-Host "  ToG updated successfully!"
Write-Host "==================================="
Write-Host ""
Write-Host "Restart opentog."
