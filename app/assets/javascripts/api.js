 // $('#sort_type')
 // .change(function() {
 //    alert('Option changed');
 //  })

$("#sort_type").click(function() {

  window.location.search = "?order_by=" + $(this).val();
  // $('select').val($(this).val())
  // alert($(this).val())
});

// $("#sort_type").click(function() {
//   alert('responding to JS')
// });
