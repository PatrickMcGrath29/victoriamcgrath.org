$(document).on("ready", function() {
  $(".carousel").slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2300,
    lazyLoad: "ondemand",
    arrows: false
  });

  $(".fade-carousel").slick({
    slidesToShow: 1,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2300,
    lazyLoad: "ondemand",
    fade: true,
    arrows: false
  });

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
          slidesToShow: 1
        }
      }
    ]
  });

  $(".3-wrap-carousel").slick({
    slidesToShow: 3,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2300,
    lazyLoad: "ondemand",
    arrows: false
  });
});
