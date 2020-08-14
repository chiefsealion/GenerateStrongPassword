New-Item -Path "C:\Program Files\WindowsPowerShell\Modules\" -Name "GenerateStrongPassword" -ItemType Directory

Move-Item -Path "C:\Temp\GenerateStrongPassword.psm1" -Destination "C:\Program Files\WindowsPowerShell\Modules\GenerateStrongPassword\"

Start-Process -FilePath "C:\Temp\AutoHotkey_1.1.33.02_setup.exe"

Copy-Item "C:\Temp\GenerateStrongPassword.ahk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\"

Start-Process -FilePath "C:\Temp\GenerateStrongPassword.ahk"