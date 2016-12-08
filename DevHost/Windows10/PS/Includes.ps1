$url = "http://bit.ly/2hpM7bG"
$output = Join-Path $PSScriptRoot "Add-Path.ps1"
Start-BitsTransfer -Source $url -Destination $output
.$output

$url = "http://bit.ly/2hpM7bG"
$output = Join-Path $PSScriptRoot "Add-Path.ps1"
Start-BitsTransfer -Source $url -Destination $output
.$output