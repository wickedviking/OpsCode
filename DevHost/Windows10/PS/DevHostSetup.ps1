####################
# Install Chocolatey
####################
Write-Host "Installing Chocolatey"
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
Write-Host

#############################
# Install Apps via Chocolatey
#############################
Write-Host "Installing Packages via Chocolatey"
cinst git -y --params '"/GitAndUnixToolsOnPath"'
Write-Host