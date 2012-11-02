module.exports = (robot) ->
  robot.router.post "/hubot/postsvn", (req, res) ->
    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end "Thanks; subversion commit written to chat.\n"

