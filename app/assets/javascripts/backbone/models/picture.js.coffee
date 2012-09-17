class Instapop.Models.Pricture extends Backbone.Model
  defaults:
    name: "Hollywood picture"

class Instapop.Collections.PrictureCollection extends Backbone.Collection
  Backbone.emulateHTTP = true

  model: Instapop.Models.Pricture
  fetch: ->
    data = $.getJSON(
      'https://api.instagram.com/v1/media/popular?access_token=' + Instapop.Constants.current_token
    )

    $.when(
      data
    ).done(
      console.log data

    ).fail(
      console.log 'failed'
    )
