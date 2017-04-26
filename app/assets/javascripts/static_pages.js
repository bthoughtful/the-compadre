function snapScroll() {
  var delay = false;

  $(document).on('mousewheel DOMMouseScroll', function(event) {
    event.preventDefault();
    if(delay) return;

    delay = true;
    setTimeout(function(){ delay = false }, 400)

    var wd = event.originalEvent.wheelDelta || -event.originalEvent.detail;
    var topSection = document.querySelector('#headline-background');
    var bottomSection = document.querySelector('#content-background');

    if (wd > 0) {
      $('html,body').animate({ scrollTop: topSection.offsetTop });
    } else {
      $('html,body').animate({ scrollTop: bottomSection.offsetTop });
    }
  });
  // prevents manual scroll on mobile touch. use arrow buttons instead.
  $(document).on('touchmove', function(event) {
    event.preventDefault();
  });
}

$( document ).on('turbolinks:load', function() {
  snapScroll();

  $('#scroll-down').on('click', function() {
    $('html, body').animate({ scrollTop: $('#content-background').offset().top }, 500);
  });

  $('#scroll-up').on('click', function() {
    $('html, body').animate({ scrollTop: $('#headline-background').offset().top }, 500);
  });
});
