function snapScroll() {
  var delay = false;

  $(document).on('mousewheel DOMMouseScroll touchmove', function(event) {
    event.preventDefault();
    if(delay) return;

    delay = true;
    setTimeout(function(){ delay = false }, 200)

    var wd = event.originalEvent.wheelDelta || -event.originalEvent.detail;
    var topSection = document.querySelector('#topSection');
    var bottomSection = document.querySelector('#bottomSection');

    if (wd > 0) {
      $('html,body').animate({ scrollTop: topSection.offsetTop });
    } else {
      $('html,body').animate({ scrollTop: bottomSection.offsetTop });
    }
  });

  //touchmove works for iOS, I don't know if Android supports it...
  $(document).on('touchmove', function() {
    $(document).trigger('mousewheel');
    console.log('triggered mousewheel from touchmove');
  });
}

$( document ).on('turbolinks:load', function() {

  snapScroll();

  $('#scroll-down').on('click', function() {
    $('html, body').animate({ scrollTop: $('.content-background').offset().top }, 500);
  });

  $('#scroll-up').on('click', function() {
    $('html, body').animate({ scrollTop: $('.headline-background').offset().top }, 500);
  });

});
