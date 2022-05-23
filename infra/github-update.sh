#!/bin/sh
# This is a simple bash script that will poll github for changes to your repo,

while true
do

#move into your git repo 
cd ~/hatespeech;

git fetch;
LOCAL=$(git rev-parse HEAD);
REMOTE=$(git rev-parse @{u});

#if our local revision id doesn't match the remote, we will need to pull the changes
if [ $LOCAL != $REMOTE ]; then
    echo "pulled new code and merging"
    # git pull origin master;
    git pull;

    # echo "stopping kestrel"
    # sudo systemctl stop kestrel.service

    # sudo dotnet publish /home/dave/api-security-test/ --configuration Release --output /var/www

    # echo "starting kestrel"
    # sudo systemctl start kestrel.service
fi
sleep 5
done