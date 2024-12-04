try {
    Invoke-WebRequest -Uri $VIS -OutFile $VISPath
    Start-Sleep -Seconds 5
    Start-Process -FilePath $VISPath -ErrorAction Stop
} catch {
    Write-Error $_.Exception.Message
}
