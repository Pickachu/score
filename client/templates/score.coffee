if Meteor.isClient
  # counter starts at 0
  Session.setDefault 'counter', 0

  Template.lifescore.helpers 
    score: -> Session.get 'score'

  Template.lifescore.events 'click button': ->
    # increment the counter when button is clicked
    Meteor.call 'getUserData', (error, data) ->
      score = 100
      Session.set 'counter', data
    return

if Meteor.isServer
  Meteor.startup ->
    # code to run on server at startup
    return