class Instapop.Models.Picture extends Backbone.Model

  updateAttributesWith: (attributes) ->
    @attributes = attributes
    @trigger('updated')

  thumbnail: ->
    @get('images').thumbnail

  caption_text: ->
    caption = @get('caption')
    return 'instagram image' unless caption
    caption.text || 'instagram image'

class Instapop.Collections.Pictures extends Backbone.Collection
  model: Instapop.Models.Picture
  url: '/pictures'




