Write-Host "Installing Chocolatey"
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
Write-Host

Write-Host "Installing Packages via Chocolatey"

# Version Control
cinst -y git --params '"/GitAndUnixToolsOnPath"'
cinst -y svn

# Languages available on host
cinst -y php
cinst -y nodejs
cinst -y golang

# Remote Connectivity
cinst -y putty
cinst -y mtputty --allow-empty-checksums
cinst -y winscp

# Database access
cinst -y mysql.workbench

# Editors and IDEs
cinst -y phpstorm
cinst -y notepadplusplus

#Browsers
cinst -y googlechrome
cinst -y firefox

#Password Managers
cinst -y lastpass
cinst -y lastpass-for-applications

#Chat/Messaging
cinst -y slack
cinst -y mirc

#Images/Containers/DevOps
cinst -y rufus
cinst -y vagrant
cinst -y packer
cinst -y docker
cinst -y chefdk

#Screen Recording/Keypress OSD/Video Editing
obs
blender

Write-Host

Write-Host "Refreshing Path"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Configuring git"
git config --global user.email "wickedvikingstudios@gmail.com"
git config --global user.name "wickedviking"

Write-Host "Removing all desktop icons"
Remove-Item C:\Users\*\Desktop\*lnk -Force