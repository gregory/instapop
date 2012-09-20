describe 'Instapop.Models.Picture', ->
  beforeEach ->
    @picture = new Instapop.Models.Picture
    @user    = new Instapop.Models.User({username: 'toto'})
    sinon.mock(@user)

  it 'should have a default name', ->
    expect(@picture.get('name')).toEqual('super name')

  it 'should be initialized with a user model', ->
    spyOn(@picture, 'get', 'user').andReturn(@user)
    expect(@picture.user instanceof Instapop.Models.User).toEqual(true)

  describe '#username', ->
    it 'return the username of the user', ->
      console.log @picture.username()
      spyOn(@picture.user, 'username')
      console.log @picture.username
      #@picture.user.username.toHaveBeenCalled()


describe 'Instapop.Collections.Pictures', ->
  beforeEach ->
    @pictureCollection = new Instapop.Collections.Pictures

  it 'gets the good api url', ->
    expect(@pictureCollection.url).toMatch(/\/pictures/)
