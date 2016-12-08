#Windows 10 DevHost
Before the following commands will work, make sure you have permission to run the scripts.
```
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```

***Setup***
* Install Windows
* Update Windows
* Install drivers
* Open PowerShell as **administrator** and run:
```
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