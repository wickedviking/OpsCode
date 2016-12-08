# OpsCode

##DevHost
Contains scripts to provision applicationas and configurations to a new development machine.

### Windows 10
***Setup***
* Install Windows
* Update Windows
* Install drivers
* Open PowerShell as **administrator** and run:
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
iex((new-object net.webclient).DownloadString('http://bit.ly/2h0OWCM'))
```
***TearDown***
* Open PowerShell as **administrator** and run:
```
iex((new-object net.webclient).DownloadString('http://bit.ly/2goWrmB'))
```

***Upgrade***
* Open PowerShell as **administrator** and run:
```
iex((new-object net.webclient).DownloadString('http://bit.ly/2gGdfmC'))
```
