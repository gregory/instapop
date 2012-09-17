class Instapop.Routers.PicturesRouter extends Backbone.Router

  class Vulcainapp.Routers.ArticlesRouter extends Backbone.Router
  initialize: (options) ->
    @articles = Vulcainapp.datas.collections.articles

  routes:
    "pictures"      : "index"

  index: ->
    console.log 'initialized'
    listing = new Instapop.Views.Pictures.Index
    $("#pictures").html('ok')
