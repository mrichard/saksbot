module.exports = (robot) ->
  robot.router.post "/hubot/svn", (req, res) ->

    revision = req.body.revision
    username = req.body.username
    log = req.body.log

    robot.logger.info "Subversion revision #{revision} committed."

    room = "26768_front-end_team"
    message = "Subversion revision #{revision} committed by #{username}:\n#{log}"

    robot.messageRoom room, message

    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end "Thanks; subversion commit written to chat.\n"

