###############################################
# undoes DevHostSetup.ps1, used for dev/testing
###############################################

###############################
# Uninstall Apps via chocolatey
###############################
choco uninstall -yx git
choco uninstall -yx php