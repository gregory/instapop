Instapop.Views.Pictures ||= {}

class Instapop.Views.Pictures.Index extends Backbone.View
  className: 'image'

  initialize: ->
    @render()
    @feedCollection = new Instapop.Collections.Pictures
    @collection.on('reset', @displayAlbum, @)

  #change the old picture with the new picture
  changePicture: (oldPictureModel, newPictureModel)->
    oldPictureModel.updateAttributesWith(newPictureModel.attributes)

  #display the collection of pictures
  displayAlbum: ->
    @render()
    @feedCollection.fetch()
    @collection.each @displayPicture, @
    @refreshAlbum()

  #append a single picture to the current album
  displayPicture: (picture) ->
    view = new Instapop.Views.Pictures.Picture({model: picture})
    $(@el).append(view.render().el)

  shuffle: (collection)-> collection.shuffle()

  newPictureModel: ->
    @feedCollection.fetch() if @feedCollection.length < 10
    @feedCollection.shift()

  #refresh the album
  refreshAlbum: ->
    max = @collection.length
    index = 0
    setInterval =>
      oldPictureModel = @collection.at( index % max)
      @updatePicture(oldPictureModel)
      index +=1
    , 30000

  render: ->
    @

  #update a picture in the view
  updatePicture: (oldPictureModel) ->
    @changePicture(oldPictureModel, @newPictureModel() )
