

if url
  $.get url, (data) ->
    $("#result").html data
else
  $("#error").show()