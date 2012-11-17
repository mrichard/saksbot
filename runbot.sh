#!/bin/bash

export HUBOT_HIPCHAT_JID="26768_183799@chat.hipchat.com"
export HUBOT_HIPCHAT_PASSWORD="jevynrobert"
export HUBOT_HIPCHAT_ROOMS="26768_front-end_team@conf.hipchat.com,26768_nyc_weekly_pub_updates@conf.hipchat.com"
export PORT=8686

./bin/hubot --adapter hipchat --adapter hipchat