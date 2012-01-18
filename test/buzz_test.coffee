testCase = require('nodeunit').testCase
Buzz = require('../lib/buzz').Buzz

module.exports = testCase
  # MODEL
  "When we input 3 to the Buzz checker, node is returned": (test) ->
    sut = new Buzz
    test.equal "node", sut.check(3)
    test.done()
  "When we input a multiple of 3, node is returned": (test) ->
    sut = new Buzz
    test.equal "node", sut.check(6)
    test.equal "node", sut.check(12)
    test.equal "node", sut.check(18)
    test.done()
  "When we input a multiple of 5, buzz is returned": (test) ->
    sut = new Buzz
    test.equal "buzz", sut.check(5)
    test.equal "buzz", sut.check(10)
    test.done()
  "When we input a multiple of 3 and 5, nodebuzz is returned": (test) ->
    sut = new Buzz
    test.equal "nodebuzz", sut.check(15)
    test.equal "nodebuzz", sut.check(30)
    test.done()

  "When we input 4, 4 is returned": (test) ->
    sut = new Buzz
    test.equal 4, sut.check(4)
    test.done()

  # MODEL COLLECTION
  "When a zero is passed in the array should be empty": (test) ->
    sut = new Buzz
    test.equal 0, sut.start(0).length
    test.done()
  "When a 1 is passed in the array should have one value and that value should be a 1": (test) ->
    sut = new Buzz
    test.equal 1, sut.start(1).length
    test.done()
  "When we run multiple items, they are run through the checker": (test) ->
    sut = new Buzz
    values = sut.start(15)
    test.equal 2, values[1]
    test.equal "node", values[2]
    test.equal "buzz", values[4]
    test.equal "nodebuzz", values[14]
    test.done()
