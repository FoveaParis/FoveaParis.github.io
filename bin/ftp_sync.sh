#!/usr/bin/env sh

#########################################################
#                                                       #
# This script updates FOVEA Website                     #
#                                                       #
# USAGE: ./ftp_sync.sh                                  #
#                                                       #
# Visit me @ jserizay.website                           #
#                                                       #
#########################################################

#====

USER="foveapar"
SERVER="cpanel.freehosting.com"
PW="Z428qq0fTx"

#====

ftp -i -n ${SERVER} << EOF
quote USER ${USER}
quote PASS ${PW}
cd public_html/
mput *
quit
EOF
exit 0
