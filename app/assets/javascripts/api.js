// $("#sort_type").click(function() {

//   window.location.search = "?order_by=" + $(this).val();
//   // $('select').val($(this).val())
//   // alert($(this).val())
// });


$("#sort_type").change(
  function(){
    var value = $("#sort_type").val();
    $.ajax({
      type: "GET",
      dataType: "script",
      data: { order_by: value }
    })
  })
