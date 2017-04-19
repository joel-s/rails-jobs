// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(function () {
  console.log("ready");
  $("tr[data-link]").click(function() {
    window.location = $(this).data("link")
  });
})
