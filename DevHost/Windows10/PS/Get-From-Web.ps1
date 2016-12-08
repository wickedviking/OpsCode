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