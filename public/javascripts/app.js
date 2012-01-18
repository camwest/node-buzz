(function() {
  $(document).ready(function() {
    var form;
    form = $('#form');
    return $(form).submit(function() {
      var length, location;
      length = $(form).find('#length').val();
      location = "/node_buzz/" + length + ".json";
      window.location = location;
      return false;
    });
  });
}).call(this);
