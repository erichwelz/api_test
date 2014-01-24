 // $('#sort_type')
 // .change(function() {
 //    alert('Option changed');
 //  })

$("#sort_type").change(function() {
  window.location.search = "?order_by=" + $(this).val();
});

