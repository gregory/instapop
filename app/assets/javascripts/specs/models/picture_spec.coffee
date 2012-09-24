@context = @describe
describe 'Instapop.Models.Picture', ->
  beforeEach ->
    @picture = new Instapop.Models.Picture

  describe '#updateAttributesWith', ->
    beforeEach ->
      @copy = new Instapop.Models.Picture({attr1: 'super'})

    it 'update the attributes', ->
      @picture.updateAttributesWith(@copy.toJSON())
      expect(@picture.get('attr1')).toEqual('super')

    it 'triggers an event', ->
      spyOn(@picture, 'trigger')
      @picture.updateAttributesWith(@copy.toJSON())
      expect(@picture.trigger).toHaveBeenCalledWith('updated')

  describe '#thumbnail', ->
    it 'calls the get backbone method for images', ->
      spyOn(@picture, 'get').andReturn({thumbnail: ''})
      @picture.thumbnail()
      expect(@picture.get).toHaveBeenCalledWith('images')

  describe '#caption_text', ->
    it 'calls the get backbone method for caption', ->
      spyOn(@picture, 'get').andReturn({text: ''})
      @picture.caption_text()
      expect(@picture.get).toHaveBeenCalledWith('caption')

    context 'when there is a caption with text', ->
      it 'returns the caption text', ->
        spyOn(@picture, 'get').andReturn({text: 'awesome text'})
        expect(@picture.caption_text()).toEqual('awesome text')

    context 'when there is no caption without text', ->
      it 'returns the words: instagram image', ->
        spyOn(@picture, 'get').andReturn({text: ''})
        expect(@picture.caption_text()).toEqual('instagram image')

    context 'when there is no caption', ->
      it 'returns the words: instagram image', ->
        spyOn(@picture, 'get').andReturn({})
        expect(@picture.caption_text()).toEqual('instagram image')


describe 'Instapop.Collections.Pictures', ->
  beforeEach ->
    @pictureCollection = new Instapop.Collections.Pictures

  it 'gets the good api url', ->
    expect(@pictureCollection.url).toMatch(/\/pictures/)
