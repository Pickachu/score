Facebook = (accessToken) ->
  
  @fb = require('fbgraph')

  @accessToken = accessToken

  @fb.setAccessToken @accessToken

  @options =
    timeout: 3000
    pool: maxSockets: Infinity
    headers: connection: 'keep-alive'

  @fb.setOptions @options



Meteor.methods
  getUserData: ->
    fb = new Facebook(Meteor.user().services.facebook.accessToken)
    data = fb.getUserData()
    data