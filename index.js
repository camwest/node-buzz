require('coffee-script');
var app = require('./app/web');
var port = process.env.PORT || 3000
app.listen(port);