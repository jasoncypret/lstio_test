#= require jquery
#= require knockout
#= require expressionui.all.js


class ViewModel
  constructor: (first, last) ->
    @firstName = ko.observable(first)
    @lastName =  ko.observable(last)
    @fullName = ko.computed =>
      @firstName() + " " + @lastName()

    



$ ->
  window.viewmodel = new ViewModel
  ko.applyBindings(new ViewModel("CoffeeScript", "Fan"))