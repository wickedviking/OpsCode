# Include Helper other helper functions
$url = "http://bit.ly/2gGrLec"
$output = Join-Path $PSScriptRoot "Includes.ps1"
Import-Module BitsTransfer
Start-BitsTransfer -Source $url -Destination $output
.$output

$localIpAddress = ((ipconfig | findstr [0-9].\.)[0]).Split()[-1]
If( (Get-ComputerVirtualStatus $localIpAddress).IsVirtual ) {
    Write-Host "True"
} Else {
    Write-Host "False"
}