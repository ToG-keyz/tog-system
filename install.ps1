# ==========================
# ToG Installer
# ==========================

$InstallDir = "$env:LOCALAPPDATA\ToG\bin"

# Đường dẫn file trên GitHub
$DownloadUrl = "https://raw.githubusercontent.com/tog-keyz/tog-system/main/opentog.bat"

Write-Host ""
Write-Host "Installing ToG..."
Write-Host ""

# Tạo thư mục
New-Item -ItemType Directory -Force -Path $InstallDir | Out-Null

# Tải opentog.bat
Invoke-WebRequest `
    -Uri $DownloadUrl `
    -OutFile "$InstallDir\opentog.bat"

# Thêm vào PATH nếu chưa có
$userPath = [Environment]::GetEnvironmentVariable("Path","User")

if ($userPath -notlike "*$InstallDir*") {

    [Environment]::SetEnvironmentVariable(
        "Path",
        "$userPath;$InstallDir",
        "User"
    )

    Write-Host "PATH updated."
}

Write-Host ""
Write-Host "=================================="
Write-Host " ToG installed successfully!"
Write-Host "=================================="
Write-Host ""
Write-Host "Open a NEW CMD and type:"
Write-Host ""
Write-Host "    opentog"
Write-Host ""
