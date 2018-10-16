#!/usr/bin/env sh

#########################################################
#                                                       #
# This script updates mmy personal website              #
# It also pushes this page to github (duplicate)        #
#                                                       #
# USAGE: ./rysnc.cpanel.sh "COMMIT_LABEL"               #
#                                                       #
# Visit me @ jserizay.website                           #
#                                                       #
#########################################################

#====

HOST="jserizay"
SERVER="cpanel.data-center.com"
COMMIT=$1

#====

# Update personal website
gecho -e "\n--- Uploading to Cpanel ---\n"
rsync -P -r -a -v -e ssh . ${HOST}@${SERVER}:public_html/

# Also update github page
gecho -e "\n--- Uploading to https://github.com/js2264/Business.git ---\n"
git init
echo "node_modules/" > .gitignore
git add .
git commit -m ${COMMIT}
#git remote add origin https://github.com/js2264/js2264.github.io.git
git push

