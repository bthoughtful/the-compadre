$( document ).on('turbolinks:load', function() {

  $('#scroll-down').on('click', function() {
    $('html, body').animate({ scrollTop: $('.content-background').offset().top }, 1000);
  });

  $('#scroll-up').on('click', function() {
    $('html, body').animate({ scrollTop: $('.headline-background').offset().top }, 1000);
  });

});
