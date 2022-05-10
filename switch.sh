#!/bin/sh

nl=$(gsettings get org.gnome.settings-daemon.plugins.color night-light-enabled)
echo $nl

if [ $nl = true ]
then
    gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false
    echo 'Night Light has been disabled'
else
    gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
    echo 'Night Light has been enabled'
fi