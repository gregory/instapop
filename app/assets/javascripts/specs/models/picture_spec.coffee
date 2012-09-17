describe 'Instapop.Models.Pricture', ->
  beforeEach ->
    @picture = new Instapop.Models.Pricture

  it 'should have a default name', ->
    expect(@picture.get('name')).toEqual('Hollywood picture')

describe 'Instapop.Collections.PrictureCollection', ->
  beforeEach ->
    @pictureCollection = new Instapop.Collections.PrictureCollection

  it 'gets the good api url', ->
    expect(@pictureCollection.url).toMatch(/^https:\/\/api.instagram.com\/v1\/media\/popular\?access_token=/)
