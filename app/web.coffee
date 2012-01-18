express = require 'express'
Buzz = require('../lib/buzz').Buzz



app = module.exports = express.createServer express.logger()
app.set 'view engine', 'jade'

app.configure ->
  app.use express.static "#{__dirname}/../public"

app.get '/', (req, res) ->
  res.render 'index'

app.get '/node_buzz/:id.json', (req, res) ->
	# res.send [1]
	buzz = new Buzz
	num = req.params.id
	values = buzz.start(num)
	res.send values
