

if (url) {
  $.get(url, function(data){
    return $("#result").html(data);
  });
} else {
  $("#error").show();
}