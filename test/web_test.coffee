app = require '../app/web'
tobi = require 'tobi'
browser = tobi.createBrowser app

browser.get '/', (res, $) ->
	$('#form').should.have.id('form')

browser.get '/node_buzz/1.json', (res, obj) ->
	res.should.have.status 200
	obj.should.eql [1]

browser.get '/node_buzz/10.json', (res, obj) ->
	obj.should.eql [ 1, 2, 'node', 4, 'buzz', 'node', 7, 8, 'node', 'buzz' ]