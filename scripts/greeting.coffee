# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot die - End hubot process

module.exports = (robot) ->
  robot.logger.info "register greeting"
  robot.hear /kick'?s ass/i, (msg) ->
    msg.send "YEAH, THAT TOTALLY KICKS ASS!!"

  robot.hear /rocks/i, (msg) ->
    msg.send "YEAH, THAT TOTALLY ROCKS!!"

  robot.hear /awesome/i, (msg) ->
    msg.send "yes, let's do more awesome please!!"
