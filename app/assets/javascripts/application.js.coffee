#= require jquery
#= require knockout
#= require expressionui.modal.js
#= require expressionui.popover.js
#= require expressionui.notify.js


class ViewModel
  constructor: (first, last) ->
    @firstName = ko.observable(first)
    @lastName =  ko.observable(last)
    @fullName = ko.computed =>
      @firstName() + " " + @lastName()

    



$ ->
  window.viewmodel = new ViewModel
  ko.applyBindings(new ViewModel("CoffeeScript", "Fan"))