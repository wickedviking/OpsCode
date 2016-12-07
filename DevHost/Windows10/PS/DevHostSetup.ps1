Write-Host "Installing Chocolatey"
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
Write-Host

Write-Host "Installing Packages via Chocolatey"
cinst -y git --params '"/GitAndUnixToolsOnPath"'
cinst -y php
Write-Host

Write-Host "Refreshing Path"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Configuring git"
git config --global user.email "wickedvikingstudios@gmail.com"
git config --global user.name "wickedviking"