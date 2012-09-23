class Instapop.Models.Picture extends Backbone.Model
  defaults:
    name: "super name"
    oldAttributes: {}

  initialize: ->
    @user = new Instapop.Models.User(@get('user'))

  updateAttributesWith: (attributes) ->
    @oldAttributes = @attributes
    @attributes = attributes
    @trigger('updated', @)


  thumbnail: ->
    @get('images').thumbnail

  caption_text: ->
    caption = @get('caption')
    if caption then caption.text else 'instagram image'

class Instapop.Collections.Pictures extends Backbone.Collection
  model: Instapop.Models.Picture
  url: '/pictures'




