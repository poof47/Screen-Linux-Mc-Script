#!/bin/sh
#Script for servers.
echo "Server boot"
cd /your/server/path/srv #enter the server directory.
screen -AmdS <screenname> sh -i boot.sh #create the screen you wanted for your minecraft server, for 
sleep .5                                #example: screen -AmdS survival sh -i boot.sh
echo "Second."
sleep .5
echo "Done!"
screen -XS boot kill #this kills the current screen
exit

