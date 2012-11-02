#!/bin/sh

REPOS="$1"
REV="$2"

log=$(svnlook log $REPOS -r $REV)
author=$(svnlook author $REPOS -r $revision)
curl http://saksbot.herokuapp.com/hubot/svn --data "revision=$REV" --data "log=$log" --data "username=$author" --data "repo=$REPOS"