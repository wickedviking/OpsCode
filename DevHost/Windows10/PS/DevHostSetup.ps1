Write-Host "Installing Chocolatey"
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
Write-Host

Write-Host "Installing Packages via Chocolatey"
cinst -y git --params '"/GitAndUnixToolsOnPath"'
cinst -y php
cinst -y putty
cinst -y mtputty --allow-empty-checksums
cinst -y mysql.workbench
cinst -y atom
cinst -y nodejs
cinst -y phpstorm
Write-Host

Write-Host "Refreshing Path"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Configuring git"
git config --global user.email "wickedvikingstudios@gmail.com"
git config --global user.name "wickedviking"

Write-Host "Configuring atom"
apm install git-plus
apm install git-plus-plus
apm install git-tools