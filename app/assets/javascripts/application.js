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
//= require turbolinks
//= require_tree .

// SEARCH FILTER 
$(document).ready(function() {
    $('.search-filter-open').click(function() {
      $(".search-filter-box").animate({top: 0}, 250).show();
    });

    $('.search-filter-close').click(function() {
      $(".search-filter-box").animate({top: -230}, 250);
    });
});

// CURRENT LINK HIGHLIGHT
$(document).ready(function() {
  $("#nav-links a[href]").each(function() {
    if (this.href == window.location.href) {
      $(this).addClass("nav-current-link");
    }
  });
});