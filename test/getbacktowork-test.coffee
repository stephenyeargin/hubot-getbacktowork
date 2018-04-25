Helper = require('hubot-test-helper')
chai = require 'chai'
nock = require 'nock'

expect = chai.expect

helper = new Helper [
  '../src/getbacktowork.coffee'
]

describe 'getbacktowork', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  # hubot gbtw
  it 'responds with a gif', (done) ->
    selfRoom = @room
    selfRoom.user.say('alice', '@hubot gbtw')
    setTimeout(() ->
      try
        expect(selfRoom.messages[0]).to.eql [
          'alice',
          '@hubot gbtw'
        ]
        expect(selfRoom.messages[1][1]).to.match(
          /https\:\/\/user-images\.githubusercontent\.com\/(.*)\.(jpg|gif|png)/
        )
        done()
      catch err
        done err
      return
    , 1000)
