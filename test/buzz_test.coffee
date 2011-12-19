testCase = require('nodeunit').testCase
Buzz = require('../lib/buzz').Buzz

module.exports = testCase
  "When a zero is passed in the array should be empty": (test) ->
    sut = new Buzz
    test.equal 0, sut.start(0).length
    test.done()
