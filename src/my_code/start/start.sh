#!/bin/bash
# Absolute path to this script is in /home/user/bin/foo.sh
SCRIPT=$(readlink -f $0)
# Absolute path to this script is in /home/user/bin
SCRIPTPATH=`dirname $SCRIPT`
cd "$SCRIPTPATH"
if [ $? -eq 0 ]; then
# start tmuxinator
tmuxinator start -p ./session.yml
fi
