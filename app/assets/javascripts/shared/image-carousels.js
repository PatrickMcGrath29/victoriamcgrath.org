$(document).on("ready", function() {
  $(".carousel").slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2300,
    lazyLoad: "ondemand",
    arrows: false
  });
});

$(document).on("ready", function() {
  $(".2-wrap-carousel").slick({
    slidesToShow: 2,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2300,
    lazyLoad: "ondemand",
    arrows: false,
    responsive: [
      {
        breakpoint: 768,
        settings: {
          slidesToShow: 1,
        }
      }
    ]
  });
})

$(document).on("ready", function() {
  $(".3-wrap-carousel").slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2300,
    lazyLoad: "ondemand",
    arrows: false
  });
});
