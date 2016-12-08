###############################################
# undoes DevHostSetup.ps1, used for dev/testing
###############################################

###############################
# Uninstall Apps via chocolatey
###############################

# Version Control
cuninst -y -x git
cuninst -y -x svn

# Languages available on host
cuninst -y -x php
cuninst -y -x nodejs
cuninst -y -x golang

# Remote Connectivity
cuninst -y -x putty
cuninst -y -x mtputty --allow-empty-checksums
cuninst -y -x winscp

# Database access
cuninst -y -x mysql.workbench

# Editors and IDEs
cuninst -y -x phpstorm
cuninst -y -x notepadplusplus

#Browsers
cuninst -y -x googlechrome
cuninst -y -x firefox

#Password Managers
cuninst -y -x lastpass
cuninst -y -x lastpass-for-applications

#Chat/Messaging
cuninst -y -x slack
cuninst -y -x mirc

#Images/Containers/DevOps
cuninst -y -x rufus
cuninst -y -x vagrant
cuninst -y -x packer
cuninst -y -x docker
cuninst -y -x chefdk