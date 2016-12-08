###############################################
# undoes DevHostSetup.ps1, used for dev/testing
###############################################

###############################
# Uninstall Apps via chocolatey
###############################

# Version Control
cuninst -y git
cuninst -y svn

# Languages available on host
cuninst -y php
cuninst -y nodejs
cuninst -y golang

# Remote Connectivity
cuninst -y putty
cuninst -y mtputty
cuninst -y winscp

# Database access
cuninst -y mysql.workbench

# Editors and IDEs
cuninst -y phpstorm
cuninst -y notepadplusplus

#Browsers
cuninst -y googlechrome
cuninst -y firefox

#Password Managers
cuninst -y lastpass
cuninst -y lastpass-for-applications

#Chat/Messaging
cuninst -y slack
cuninst -y mirc

#Images/Containers/DevOps
cuninst -y rufus
cuninst -y vagrant
cuninst -y packer
cuninst -y docker
cuninst -y chefdk

#Screen Recording/Keypress OSD/Video Editing
cuninst -y obs
cuninst -y blender