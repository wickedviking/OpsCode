###############################################################################
# Add-Path $path
#
# Helper function to add a path to the environment path variable in a 
# persistent manner.
# Based on https://gist.github.com/vintem/6334646
###############################################################################
function Add-Path() {
    [Cmdletbinding()]
    param([parameter(Mandatory=$True, ValueFromPipeline=$True, Position=0)][String[]]$addedFolder)

    $oldPath=(Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH).Path

    if (!$addedFolder) {
        Return 'No Folder Supplied. $ENV:PATH Unchanged'
    }

    if (!(Test-Path $addedFolder)) {
        Return 'Folder Does Not Exist, Cannot be added to $ENV:PATH'
    }cd

    if ($ENV:PATH | Select-String -SimpleMatch $addedFolder) {
        return "Folder already within $ENV:PATH"
    }

    $newPath = $oldPath+';'+$addedFolder
    Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name PATH -Value $newPath

    return $newPath

}