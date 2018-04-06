$(document).on("turbolinks:load", function() {
  $(".navbar-collapse-toggle").click(function() {
    $(this).toggleClass("navbar-active");
    $("nav.navbar").toggleClass("mobile-hidden");
  });
});