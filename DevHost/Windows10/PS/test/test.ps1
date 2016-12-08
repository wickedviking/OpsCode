# Include Helper other helper functions
$url = "http://bit.ly/2gGrLec"
$output = Join-Path $PSScriptRoot "Includes.ps1"
Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
.$output

#$Credential = Get-Credential
If(Get-ComputerVirtualStatus '10.101.120.21') {
    Write-Host "True"
} Else {
    Write-Host "False"
}