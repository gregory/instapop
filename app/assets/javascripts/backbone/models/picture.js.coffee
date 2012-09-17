class Instapop.Models.Pricture extends Backbone.Model
  defaults:
    name: "Hollywood picture"

class Instapop.Collections.PrictureCollection extends Backbone.Collection
  model: Instapop.Models.Pricture
  url: <%= "https://api.instagram.com/v1/media/popular?access_token=#{current_token}" %>
