#= require jquery
#= require jquery_ujs
#= require knockout
#= require expressionui.all.js
#= require turbolinks

class ViewModel
  constructor: ->
    @firstName = ko.observable('first')
    @lastName =  ko.observable('last')
    
  delete_item: (id) ->
    $.ajax(
      type: "DELETE"
      url: "/items/" + id
    ).done (msg) ->
      console.log JSON.stringify(msg)

$(document).ready ->

  setTimeout (-> 
    $('.notify').notify 'close_all'
  ), 5000
  
  window.viewmodel = new ViewModel
  ko.applyBindings(new ViewModel("CoffeeScript", "Fan"))