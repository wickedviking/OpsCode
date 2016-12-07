###############################################
# undoes DevHostSetup.ps1, used for dev/testing
###############################################

###############################
# Uninstall Apps via chocolatey
###############################
cuninst -y -x git
cuninst -y -x php
cuninst -y -x putty
cuninst -y -x mtputty
cuninst -y -x mysql.workbench
cuninst -y -x nodejs
cuninst -y -x atom
cuninst -y -x phpstorm