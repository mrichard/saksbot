# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot echo <text> - Reply back with <text>
#   hubot time - Reply with current time
#   hubot die - End hubot process

greets = [
  (response) -> "Hey #{response.message.user.name}, welcome back.",
  (response) -> "Oh Snap, #{response.message.user.name} where have you been!? We missed you here!",
  (response) -> "ALERT: #{response.message.user.name} is in the house!",
  (response) -> "Thank You! Chat just got a whole lot better. Welcome back #{response.message.user.name}!",
  (response) -> "Hi #{response.message.user.name}."
]


module.exports = (robot) ->
  robot.logger.info "register greetings ok"

  robot.enter (response) ->
    robot.logger.info "Enter Event fired"
    myMessage = response.random greets
    robot.logger.info "Enter message #{myMessage(response)}"
    response.send myMessage(response)

  robot.leave (response) ->
    response.send "Cya #{response.message.user.name}."

  robot.hear /kick'?s ass/i, (response) ->
    response.send "I agree with #{response.message.user.name}, that does kick ass!"

  robot.hear /rocks/i, (response) ->
    response.send "High five #{response.message.user.name}, totally rocks!"

  robot.hear /awesome/i, (response) ->
    response.send "That reminds me #{response.message.user.name}, speaking of awesomeness... We should all do more awesome! Let's make Steve Souders proud!!"

  robot.hear /testtesttest/i, (response) ->
    myMessage = response.random greets
    response.send myMessage(response)



