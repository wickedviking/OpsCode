$url = "http://bit.ly/2hpM7bG"
$output = Join-Path $PSScriptRoot "Add-Path.ps1"
Start-BitsTransfer -Source $url -Destination $output
.$output

$url = "http://bit.ly/2hbiawN"
$output = Join-Path $PSScriptRoot "Get-From-Web.ps1"
Start-BitsTransfer -Source $url -Destination $output
.$output

$output = Join-Path $PSScriptRoot "Get-ComputerVirtualStatus.ps1"
Get-From-Web "http://bit.ly/2hpK334" $output $false
.$output