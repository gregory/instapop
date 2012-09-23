Instapop.Views.Pictures ||= {}
class Instapop.Views.Pictures.Picture extends Backbone.View
  template: JST['backbone/templates/pictures/picture']

  tagName: 'a'

  initialize: ->
    @model.on('updated', @flipPicture, @)

  flipPicture: ->
    $(@el).attr('data-id', @model.get('id'))
    img = $(@el).find('img')
    img.animate(
      {opacity: 0.0},
      1000,
      => img.attr({src: @model.thumbnail().url, alt: @model.caption_text()}).animate({opacity: 1.0}, 1000)
    )

  render: ->
    text = if @model.get('caption') then @model.get('caption').text else 'no text'
    name = @model.get('name') || 'no name'
    $(@el).attr({'rel': 'popover', 'data-original-title': name, 'data-content': text ,'data-id':@model.get('id')}).html(@template({picture: @model}))
    @
