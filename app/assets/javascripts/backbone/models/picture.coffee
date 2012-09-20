class Instapop.Models.Picture extends Backbone.Model
  defaults:
    name: "super name"

  initialize: ->
    @user = new Instapop.Models.User(@get('user'))

  username: ->
    @user.username

  profile_picture: ->
    @get('user').profile_picture

  likes: ->
    @get('likes').count

  link: ->
    @get('link')

  low_resolution: ->
    @get('images').low_resolution

  caption_text: ->
    caption = @get('caption')
    if caption then caption.text else 'instagram image'

  location: ->
    loc = @get('location')
    if loc != null
      #[loc.latitude, loc.longitude]
      ['mentioned']
    else
      ['not mentioned']

class Instapop.Collections.Pictures extends Backbone.Collection
  model: Instapop.Models.Picture
  url: '/pictures'
