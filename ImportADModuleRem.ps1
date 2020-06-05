#create a session to remote computer with appropriate module
$session = New-PSSession -ComputerName (Read-Host "enter computer name")

#module import (import local copy of activedirectory module / you can specify odrer module if you need) 
Invoke-Command -Command {Import-Module activedirectory} -Session $session

#create a temporary module with rem prefix 
Import-PSSession -Session $session -Module activedirectory -Prefix rem
