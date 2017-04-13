$( document ).ready(function() {

    var base_url=$( "#group_id" ).val();
    var controller=$( "#controller" ).val();
    var method=$( "#method" ).val();

$( "#group_id" ).change(function() {
  id= $( "#group_id" ).val();
  if(id==''){
    id=0;
  }
  $.ajax({
    type: "POST",
    url: base_url + "setting_system/list_accses_ajax/"+id,
    data: id,
    mimeType: "multipart/form-data",
    contentType: false,
    cache: false,
    processData: false,
    dataType: "json",
    success: function(data) {

    $("#content_ajax").html(data);
    
    },
    error: function(jqXHR, textStatus, errorThrown, data) {
      alert('error');
    }
  });
});

});