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
//= require underscore
//= require gmaps/google
//= require jquery.geocomplete
//= require turbolinks
//= require_tree .

// GEOCOMPLETE
$(document).ready(function() {
  // Subscribe to events of the geocode plugin
  $("#geo-input").geocomplete().bind("geocode:result", function(event, result){
    $('.search-form').submit();
  });
});  

// USER NAV PANEL
$(document).ready(function() {
  $(".user-open-panel").mouseenter(function() {
    $(".user-setting-panel").fadeIn(250);
  });

  $(".user-open-panel").mouseleave(function() {
    $(".user-setting-panel").fadeOut(250);
  });
});


// SEARCH FILTER 
$(document).ready(function() {
    $('.search-filter-open').click(function() {
      $(".search-filter-panel").animate({bottom: 0}, 250).show();
    });

    $('.search-filter-close').click(function() {
      $(".search-filter-panel").animate({bottom: -230}, 250);
    });
});

// USER LIST INFO

$(document).ready(function() {
  $(".push-button").click(function() {
    $(this).css({"height" : "125px"});
  });
});