# CACLocalServices
Powershell Script that restores Local Services for Calais, helps CAC work

Military CACs require certain permissions to run, especially the Calais folder in the Windows registry. I could not get my Local Services user to stay for the Calais folder on restart. After a few Google searches, I pieced together this small script that I can run every time I want to use a CAC on my personal computer. 

May have been a more permanent solution, but I couldn't find one that was as easy to understand and code myself. 

# How to Run
The script requires Admin privileges to run. The easiest way to achieve this is to put this file in some other location, create a desktop shortcut with the target being "Path to Powershell EXE" -f "Path to this script". For example, my target location for the desktop shortcut looks like this:  C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -f C:\scripts\calais.ps1

