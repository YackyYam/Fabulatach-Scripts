$inuvika_url = "https://archive.inuvika.com/ovd/3.5/Inuvika-OVD-3.5.1.8359-Enterprise-Desktop-Client.msi"
$inuvika_file = "Inuvika-OVD-3.5.1.8359-Enterprise-Desktop-Client.msi"
$fab_app_usb = "https://www.fabulatech.com/dists/usbrdp/usb-for-remote-desktop-workstation-64bit.msi"
$fab_file_usb = "usb-for-remote-desktop-workstation-64bit.msi"
$fab_app_webcam = "https://www.fabulatech.com/dists/camrdp/webcam-for-remote-desktop-workstation-64bit.msi"
$fab_file_webcam = "webcam-for-remote-desktop-workstation-64bit.msi"
$fab_app_sound = "https://www.fabulatech.com/dists/sndrdp/sound-for-remote-desktop-workstation-64bit.msi"
$fab_file_sound = "sound-for-remote-desktop-workstation-64bit.msi"

$ProgressPreference = 'SilentlyContinue'

Write-host "Downloading: " $inuvika_file
Invoke-WebRequest -Uri $inuvika_url -OutFile $inuvika_file
Write-host "Installing."
Start-Process -FilePath "msiexec.exe" -ArgumentList "/i", "`"$inuvika_file`"", "/qn", "/norestart" -Wait   

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