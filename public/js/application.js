
$(document).ready(function(){
  $('#submit-question-btn').click(function() {
      console.log('clicked')
      $('#myModal').modal('hide');
  });

  $('.timeago').timeago();

  $('.profile-name').hover(
    function(){
      var a = $(this)
      var width = a.css('width')
      a.text('MY PROFILE')
      $(this).css('width', width)
    },
    function(){
      a = $(this)
      a.text(a.data('initial-text'))
    }
  )
})
