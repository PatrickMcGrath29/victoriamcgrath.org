$(document).on("turbolinks:load", function() {
  $(".carousel").slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2300,
    lazyLoad: "ondemand",
    arrows: false
  });
});

$(document).on("turbolinks:load", function() {
  $(".2-wrap-carousel").slick({
    slidesToShow: 2,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2300,
    lazyLoad: "ondemand",
    arrows: false
  });
})

$(document).on("turbolinks:load", function() {
  $(".3-wrap-carousel").slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2300,
    lazyLoad: "ondemand",
    arrows: false
  });
});
