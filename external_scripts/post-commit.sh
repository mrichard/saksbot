#!/bin/sh

REPOS="$1"
REV="$2"

log=$(svnlook log $REPOS -r $REV)
author=$(svnlook author $REPOS -r $revision)
curl -X POST http://10.32.161.83:8686/hubot/svn --data "revision=$REV" --data "log=$log" --data "username=$author" --data "repo=$REPOS"