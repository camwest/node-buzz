$(document).ready ->
  
  form = $('#form')
  
  $(form).submit ->
    length = $(form).find('#length').val()
    location = "/node_buzz/#{length}.json"
    window.location = location
    return false
  