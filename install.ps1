$InstallDir = "$env:LOCALAPPDATA\ToG"

New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null

Invoke-WebRequest `
    -Uri "https://raw.githubusercontent.com/tog-keyz/tog-system/main/opentog.bat" `
    -OutFile "$InstallDir\opentog.bat"

$userPath = [Environment]::GetEnvironmentVariable("Path","User")

if ($userPath -notlike "*$InstallDir*") {
    [Environment]::SetEnvironmentVariable(
        "Path",
        "$userPath;$InstallDir",
        "User"
    )
}

Write-Host ""
Write-Host "==================================="
Write-Host "ToG installed successfully!"
Write-Host "==================================="
Write-Host ""
Write-Host "Please reopen CMD then type:"
Write-Host ""
Write-Host "    opentog"
Write-Host ""
