#!/bin/sh
set -ex
if [ -d $HOME/rubylive ]; then
    cd $HOME/rubylive
    git pull --rebase
else
    cd $HOME
    git clone https://github.com/znz/rubylive
    cd rubylive
fi
time rake APT_HTTP_PROXY=http://localhost:3142
