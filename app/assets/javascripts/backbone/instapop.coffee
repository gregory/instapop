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

Array::shuffle = -> @sort -> 0.5 - Math.random()
