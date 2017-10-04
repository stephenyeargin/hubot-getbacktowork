# Description
#   When the GIFs and YouTube links get out of hand
#
# Configuration:
#   None.
#
# Commands:
#   hubot gbtw - Tells everyone to get back to work
#
# Author:
#   Stephen Yeargin <stephen@yearg.in>

gbtw_messages = [
  'https://user-images.githubusercontent.com/80459/31158516-dc3e9ab8-a887-11e7-94af-7dbb60c82a54.jpg',
  'https://user-images.githubusercontent.com/80459/31158519-dc3f7ffa-a887-11e7-8589-a3475a225a64.jpg',
  'https://user-images.githubusercontent.com/80459/31158518-dc3f495e-a887-11e7-8991-e323d85de97f.jpg',
  'https://user-images.githubusercontent.com/80459/31158520-dc446042-a887-11e7-9fa0-da28781c65a4.jpg',
  'https://user-images.githubusercontent.com/80459/31158517-dc3ec7a4-a887-11e7-8959-933a63d9f96f.gif',
  'https://user-images.githubusercontent.com/80459/31158521-dc4c12ec-a887-11e7-9321-f717c1726150.png',
  'https://user-images.githubusercontent.com/80459/31158523-dc513952-a887-11e7-961d-ce1bdaed167c.jpg',
  'https://user-images.githubusercontent.com/80459/31158522-dc4edaf4-a887-11e7-8704-c7ae99ba8f51.jpg',
  'https://user-images.githubusercontent.com/80459/31158524-dc52aa80-a887-11e7-94be-eeecdcdac606.png',
  'https://user-images.githubusercontent.com/80459/31158525-dc532c80-a887-11e7-8e40-2a6cdb167a92.png',
  'https://user-images.githubusercontent.com/80459/31158526-dc53705a-a887-11e7-9d94-a7a3e00a973f.gif'
]

module.exports = (robot) ->
  robot.respond /(?:gbtw|get back to work|back to work)/i, (msg) ->
    msg.send msg.random gbtw_messages
