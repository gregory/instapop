class Instapop.Routers.PicturesRouter extends Backbone.Router
  routes:
    "" : "index"

  initialize: ->
    @collection = new Instapop.Collections.Pictures()
    @collection.fetch()

  index: ->
    listing = new Instapop.Views.Pictures.Index({collection: @collection})
    $("#am-container").html(listing.el)
