class Instapop.Models.User extends Backbone.Model
  initialize: (data={}) ->
    @username = data.username
