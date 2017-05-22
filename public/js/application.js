console.log("asdasf")

$(document).ready(function(){
  $('#submit-question-btn').click(function() {
      console.log('clicked')
      $('#myModal').modal('hide');
  });

  $('.timeago').timeago();
})
