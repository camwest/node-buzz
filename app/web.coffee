


app = require('express').createServer()
app.set 'view engine', 'jade'

app.get '/', (req, res) ->
  res.render 'index'

port = process.env.PORT || 3000

app.listen port