$(document).on("ready", function() {
  $(".navbar-collapse-toggle").click(function() {
    $(this).toggleClass("navbar-active");
    $("nav.navbar").toggleClass("mobile-hidden");
  });
});