module.exports = (robot) ->
  robot.router.post "/hubot/svn", (req, res) ->

    revision = req.body.revision
    username = req.body.username
    log = req.body.log
    repo = req.body.repo

    robot.logger.info "Hello ladies and gents.\nI would like to announce that subversion revision number #{revision} has been committed the repository #{repo}, by none other then #{username}.\nThe log message, beautifully written, says: #{log}"

    room = "26768_front-end_team@conf.hipchat.com"
    message = "Hello ladies and gents.\nI would like to announce that subversion revision number #{revision} has been committed to the repository #{repo}, by none other then #{username}.\nThe log message, beautifully written, says: #{log}"

    robot.messageRoom room, message

    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end "Thanks; subversion commit written to chat.\n"

