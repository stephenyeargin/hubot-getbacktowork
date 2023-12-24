/* global describe beforeEach afterEach it */
/* eslint-disable func-names */
const Helper = require('hubot-test-helper');
const chai = require('chai');

const {
  expect,
} = chai;

const helper = new Helper([
  '../src/getbacktowork.js',
]);

describe('getbacktowork', () => {
  beforeEach(function () {
    this.room = helper.createRoom();
  });

  afterEach(function () {
    this.room.destroy();
  });

  // hubot gbtw
  it('responds with a gif', function (done) {
    const selfRoom = this.room;
    selfRoom.user.say('alice', '@hubot gbtw');
    setTimeout(
      () => {
        try {
          expect(selfRoom.messages[0]).to.eql([
            'alice',
            '@hubot gbtw',
          ]);
          expect(selfRoom.messages[1][1]).to.match(
            /https:\/\/user-images\.githubusercontent\.com\/(.*)\.(jpg|gif|png)/,
          );
          done();
        } catch (err) {
          done(err);
        }
      },
      100,
    );
  });
});
