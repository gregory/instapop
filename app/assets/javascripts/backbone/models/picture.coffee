class Instapop.Models.Picture extends Backbone.Model
  defaults:
    name: "super name"

class Instapop.Collections.Pictures extends Backbone.Collection
  model: Instapop.Models.Picture
  url: '/pictures'
