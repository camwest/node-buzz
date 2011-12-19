class Buzz
  start: (numbers) ->
    return [] if numbers == 0

    output = []
    output.push @check num for num in [1..numbers]
    output

  check: (number) ->
    return 'nodebuzz' if @nodebuzzable?(number)
    return 'node' if @nodeable?(number)
    return 'buzz' if @buzzable?(number)

  nodeable: (number) ->
    number % 3 == 0

  buzzable: (number) ->
    number % 5 == 0

  nodebuzzable: (number) ->
    @nodeable(number) && @buzzable(number)

module.exports.Buzz = Buzz
