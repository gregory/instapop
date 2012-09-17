#= require_self
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.Instapop =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}
  Constants: {}
  Init: (current_token) ->
    Instapop.Constants.current_token = current_token
