function Get-From-Web ([string]$url = "", [string]$destination = "", [boolean]$addPath=$true) {
    Import-Module BitsTransfer
    Start-BitsTransfer -Source $url -Destination $output
        
    if($addPath.Equals($true)){
        Add-Path "c:\tools\"
    }    
}