describe 'Instapop.Models.Picture', ->
  beforeEach ->
    @picture = new Instapop.Models.Picture

  it 'should have a default name', ->
    expect(@picture.get('name')).toEqual('super name')

describe 'Instapop.Collections.Pictures', ->
  beforeEach ->
    @pictureCollection = new Instapop.Collections.Pictures

  it 'gets the good api url', ->
    expect(@pictureCollection.url).toMatch(/\/pictures/)
