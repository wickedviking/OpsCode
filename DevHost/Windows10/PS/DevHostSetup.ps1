###############################################################################
# DevHostSetup.ps1
#
# This script is intended to be run after Windows installation, update, and
# driver install is complete or after TearDown.ps1 has been run.
#
# Based on https://gist.github.com/vintem/6334646
###############################################################################

###############################################################################
# Get-From-Web $url $destination [$addPath]
#
# Helper function to fetch files from the web @ $url and store them in 
# $destination.
###############################################################################
function Get-From-Web ([string]$url = "", [string]$destination = "", [boolean]$addPath=$true) {
    Write-Output "Fetching $($url)"
    $start_time = Get-Date

    Import-Module BitsTransfer
    Start-BitsTransfer -Source $url -Destination $output
    Write-Output "Time taken: $((Get-Date).Subtract($start_time).Seconds) second(s)"
    
    if($addPath.Equals($true)){
        Add-Path "c:\tools\"
    }    
}


# Include Helper other helper functions
$url = "http://bit.ly/2gGrLec"
$output = "Includes.ps1"

Get-From-Web $url $output
."Includes.ps1"

###############################################################################
# Install Chocolatey
###############################################################################
Write-Host "Installing Chocolatey"
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
Write-Host

###############################################################################
# Install Boxstarter
###############################################################################
cinst -y boxstarter

###############################################################################
# Create DevHost-Dev and DevHost-Test VMs
###############################################################################

###############################################################################
# Install Packages via Chocolatey
###############################################################################
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
cinst -y obs
cinst -y blender

Write-Host

##############################################################################
# Manual Installs
##############################################################################

#PxKeystrokeForScreencasts
$url = "https://raw.githubusercontent.com/Phaiax/PxKeystrokesForScreencasts/master/Releases/v0.3.1/PxKeystrokesUi.exe"
$output = "c:\tools\PxKeystrokesUi.exe"

Get-From-Web $url $output

###############################################################################
# Application Configurations
###############################################################################
Write-Host "Configuring git"
git config --global user.email "wickedvikingstudios@gmail.com"
git config --global user.name "wickedviking"

###############################################################################
# Host Configurations, clean up, and customizations
###############################################################################
Write-Host "Refreshing Path"
$env:Path = [System.Environment]::GetEnvironmentVariable("Path","Machine") + ";" + [System.Environment]::GetEnvironmentVariable("Path","User")

Write-Host "Removing all desktop icons"
Remove-Item C:\Users\*\Desktop\*lnk -Force
