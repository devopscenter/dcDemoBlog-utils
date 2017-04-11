#!/bin/bash - 
#===============================================================================
#
#          FILE: web-run-commands.sh
# 
#         USAGE: ./web-run-commands.sh 
# 
#   DESCRIPTION: This script will be called during the Docker container run
#                phase.  It allows the user to implement any piece of code that
#                you want to run while the container is being started.
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Gregg Jensen (), gjensen@devops.center
#  ORGANIZATION: devops.center
#       CREATED: 03/10/2017 09:07:17
#      REVISION:  ---
#===============================================================================

#set -o nounset             # Treat unset variables as an error
set -x                     # Essentially debug mode

if [ -e /app-utils/conf/nginx.conf ]; then 
    cp /app-utils/conf/nginx.conf /usr/local/nginx/conf/
fi 

