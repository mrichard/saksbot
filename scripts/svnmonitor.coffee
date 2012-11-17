module.exports = (robot) ->
  robot.router.post "/hubot/svn", (req, res) ->

    revision = req.body.revision
    username = req.body.username
    log = req.body.log
    repo = req.body.repo

    robot.logger.info "Hello ladies and gents.\nI would like to announce that subversion revision number #{revision} has been committed the repository #{repo}, by none other then #{username}.\nThe log message, beautifully written, says: #{log}"

    room = "26768_front-end_team@conf.hipchat.com"
    room2 = "26768_nyc_weekly_pub_updates@conf.hipchat.com"
    message = "Hello ladies and gents.\nI would like to announce that subversion revision number #{revision} has been committed to the repository #{repo}, by none other then #{username}.\nThe log message, beautifully written, says: #{log}"

    robot.messageRoom room, message
    robot.messageRoom room2, message

    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end "Thanks; subversion commit written to chat.\n"

  robot.router.get "/hubot/previewpush/init", (req, res) ->
    console.log "Init preview push from ", req._parsedUrl.query

    user = req._parsedUrl.query.split "="
    room = "26768_front-end_team@conf.hipchat.com"

    message = "FYI, a local static sync to preview by #{user[1]} has been kicked off. "

    robot.messageRoom room, message

    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end "Thanks; static push to preview started.\n"


  robot.router.get "/hubot/previewpush/complete", (req, res) ->
    console.log "Init preview push from ", req._parsedUrl.query

    user = req._parsedUrl.query.split "="
    room = "26768_front-end_team@conf.hipchat.com"

    message = "Local static sync to preview by #{user[1]} has been completed. "

    robot.messageRoom room, message

    res.writeHead 200, {'Content-Type': 'text/plain'}
    res.end "Thanks; static push to preview started.\n"