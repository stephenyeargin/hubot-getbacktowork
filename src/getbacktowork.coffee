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
  'http://paleochef.com/wp-content/uploads/2014/04/GET-BACK-TO-WORK-21-RIGHT-MEOW-21.jpg',
  'http://www.profiletreasures.com/comments/cat/Work/Get-Back-To-Work.gif',
  'http://www.quickmeme.com/img/92/92d811887351152e055e3e577d8a84595be75761e70383a3d7958449700a4c8a.jpg',
  'http://sd.keepcalm-o-matic.co.uk/i/get-back-to-work.png',
  'http://reaganpluscats.com/wp-content/uploads/2013/10/Current-EVent-Cat-Chuck-Hagel.png',
  'http://static1.squarespace.com/static/50cced09e4b0409d2443c72c/50cced5ee4b0409d2443cb1f/533f68e3e4b0ba34df9ca626/1401314900857/buzzfed-black.gif',
  'http://cdn.meme.am/instances/55941038.jpg',
  'http://cdn.meme.am/instances/400x/58818475.jpg',
  'http://www.quickmeme.com/img/bf/bfcd4bc69e53356557f60f50dff472a48958f6603f20976694edc27dc75c7490.jpg',
  'http://4.bp.blogspot.com/--f-Ynis4OL4/UT34yEhla8I/AAAAAAAAAdU/p2S-Uouzl2k/s1600/stop+having+fun+and+do+work.gif',
  'http://ih1.redbubble.net/image.33812920.5244/sticker,375x360.u3.png'
]

module.exports = (robot) ->
  robot.respond /(?:gbtw|get back to work|back to work)/i, (msg) ->
    msg.send msg.random gbtw_messages
