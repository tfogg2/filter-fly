
  $(window).load(function(){
    $.get('filters/new', function(data){
    $('#newFilter').html(data)

    });

  }); 

    $('.filterModal').hide();
  $('.collectModal').hide();
  
  $('#myRefinementModal').hide();


  $('.collectBtn').click(function(){
    $('#myRefinementModal').show();
    $('.collectModal').show();
    
  });
  $('.filterBtn').click(function(){
    $('#myRefinementModal').show();
    $('.filterModal').hide();
  });

var $i = $('.collectFilter');
$('.collectList').append($i)
$i.attr("collection_id", collection.id)

//$('#newModal').function(){
  //$(this).hide();
  //$('.modalButton').on('click' function(){
    //$('#newModal').show();
  //});
//};








//$('#newFilter').(function(){
	//$(this).html("<%= j (render 'form') %>");
	//$(this).slideDown(350);
//});

//$('#tasks').html("<%= j (render @tasks) %>");
//$('#task-form').slideUp(350);





// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap
;
