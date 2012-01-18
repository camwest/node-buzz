express = require('express')


app = express.createServer express.logger()
app.set 'view engine', 'jade'

app.configure ->
  app.use express.static "#{__dirname}/../public"

app.get '/', (req, res) ->
  res.render 'index'
  

port = process.env.PORT || 3000

app.listen port