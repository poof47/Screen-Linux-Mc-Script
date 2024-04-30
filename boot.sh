#!/bin/sh
#Script for servers.
echo "Server reboot"
sleep .5
echo "Reboot in: 1."
sleep .5
echo "Reboot in: 2."
sleep .5
echo "Reboot in: 3."
sleep .5
echo "Reboot in: 4."
sleep .5
echo "Reboot in: 5."
sleep .5
echo "Rebooting..."
java -Xms<enteryourRam>G -Xmx<enteryourRam>G -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=5M -XX:G1ReservePercent=20 -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true -jar <spigot.jar>
#i mean you can put JVM args as whatever you want, this was just used from official site.


