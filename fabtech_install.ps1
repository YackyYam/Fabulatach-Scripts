$fab_app_scanner = "https://www.fabulatech.com/dists/scanrdp/scanner-for-remote-desktop-server-64bit.msi"
$fab_file_scanner = "scanner-for-remote-desktop-server-64bit.msi"
$fab_app_usb = "https://www.fabulatech.com/dists/usbrdp/usb-for-remote-desktop-server-64bit.msi"
$fab_file_usb = "usb-for-remote-desktop-server-64bit.msi"
$fab_app_webcam = "https://www.fabulatech.com/dists/camrdp/webcam-for-remote-desktop-server-64bit.msi"
$fab_file_webcam = "webcam-for-remote-desktop-server-64bit.msi"
$fab_app_sound = "https://www.fabulatech.com/dists/sndrdp/sound-for-remote-desktop-server-64bit.msi"
$fab_file_sound = "sound-for-remote-desktop-server-64bit.msi"

$ProgressPreference = 'SilentlyContinue'

Clear-Host

Write-host "Downloading: " $fab_file_scanner
Invoke-WebRequest -Uri $fab_app_scanner -OutFile $fab_file_scanner
Write-host "Installing."
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i", "`"$fab_file_scanner`"", "/qn", "/norestart" -Wait   

Write-host "Downloading: " $fab_file_usb
Invoke-WebRequest -Uri $fab_app_usb -OutFile $fab_file_usb
Write-host "Installing."
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i", "`"$fab_file_usb`"", "/qn", "/norestart" -Wait   

Write-host "Downloading: " $fab_file_webcam
Invoke-WebRequest -Uri $fab_app_webcam -OutFile $fab_file_webcam
Write-host "Installing."
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i", "`"$fab_file_webcam`"", "/qn", "/norestart" -Wait   

Write-host "Downloading: " $fab_file_sound
Invoke-WebRequest -Uri $fab_app_sound -OutFile $fab_file_sound
Write-host "Installing."
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i", "`"$fab_file_sound`"", "/qn", "/norestart" -Wait   

Clear-Host

Write-host "Cleaning up files."
Write-host "Deleteing: " $fab_file_scanner
Write-host "Deleteing: " $fab_file_usb
Write-host "Deleteing: " $fab_file_webcam
Write-host "Deleteing: " $fab_file_sound