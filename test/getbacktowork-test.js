const test = require('node:test');
const assert = require('node:assert/strict');
const { createTestBot } = require('./common/TestBot');

test('responds with a gif', async () => {
  const ctx = await createTestBot();
  try {
    const response = await ctx.sendAndWaitForResponse('@hubot gbtw');
    assert.match(response, /https:\/\/user-images\.githubusercontent\.com\/(.*)\.(jpg|gif|png)/);
  } finally {
    ctx.shutdown();
  }
});
