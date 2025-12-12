#!/bin/bash 
#
# here i am giving permission for execution 
#

echo "Installing Bash-nettool...."


# creat directry 
echo 
sudo mkdir -p /opt/bash-nettool 
echo 
# copy project to /opt - because it mush more professional 
sudo cp -r . /opt/bash-nettool

# executable  -  permissions 

sudo chmod +x /opt/bash-nettool/modules/*.sh
sudo chmod +x /opt/bash-nettool/main.sh
sudo chmod +x /opt/bash-nettool/server/server.sh


echo "Installation completed. "
echo " Run using : /opt/bash-nettool/main.sh "

