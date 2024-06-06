#!/usr/bin/env sh


# lock instance

lockFile="/tmp/hyrpdots$(id -u)swwwallpaper.lock"
[ -e "$lockFile" ] && echo "An instance of the script is already running..." && exit 1
touch "${lockFile}"
trap 'rm -f ${lockFile}' EXIT

swww query
if [ $? -eq 1 ] ; then
    swww init
fi
