#This script was created by chiefsealion
 #
 #
 #
 #
 #
 
 
#Create a Powershell Module directory called GenerateStrongPassword. This will host the .psm1 file.  
New-Item -Path "C:\Program Files\WindowsPowerShell\Modules\" -Name "GenerateStrongPassword" -ItemType Directory

#This will copy the .psm1 file to it's new location in the Powershell Module location
Move-Item -Path "C:\Temp\GenerateStrongPassword.psm1" -Destination "C:\Program Files\WindowsPowerShell\Modules\GenerateStrongPassword\"

#This will run the .exe for setting up AutoHotKey. Once the installation is complete, please select "Run AutoHotKey" and close to come back to the script.
Start-Process -FilePath "C:\Temp\AutoHotkey_1.1.33.02_setup.exe"

#This will copy the .AHK file to your start-up items. That way, this will always be working when you reboot your PC.
Copy-Item "C:\Temp\GenerateStrongPassword.ahk" -Destination "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\"

#This will officially start the .AHK file.
Start-Process -FilePath "C:\Temp\GenerateStrongPassword.ahk"

#To test if the script is working, please press CTRL + Num1 (the 1 key on your number pad) at the same time.
#A powershell prompt will, for a split second, run on your computer, and it will automatically paste your secure password on your clipboard
#Try pasting the password here!: 


#**ADDITIONALLY** you can open a powershell prompt at any time and type in GenerateStrongPassword(any number of characters you want the PW to be here)
#Example: GenerateStrongPassword(24)
#Example 2: GenerateStrongPassword(13) | clip (this will copy the content to your clipboard
