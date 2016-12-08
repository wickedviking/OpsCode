Import-Module Boxstarter.Chocolatey
Install-WindowsUpdate -getUpdatesFromMS=$true -acceptEula=$true -SuppressReboots=$true
Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions
Set-TaskbarOptions -Size Small -UnLock -Dock Top -Combine Always
Enable-RemoteDesktop