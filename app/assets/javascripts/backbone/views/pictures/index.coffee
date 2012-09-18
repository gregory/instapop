Instapop.Views.Pictures ||= {}

class Instapop.Views.Pictures.Index extends Backbone.View
  className: 'image'

  template: JST['backbone/templates/pictures/index']
  initialize: ->
    @collection.on('reset', @render, @)

  render: ->
    $(@el).html(@template(pictures: @collection))
    @
