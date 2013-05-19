# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $(".best_in_place").best_in_place()
  $(".best_in_place").on 'change', (event) ->
    if event.target.name = "name"
      $("li.active").text($("input[name='name']").val())