describe 'Instapop.Models.User', ->
  picture = new Instapop.Models.Picture
  beforeEach ->
    @user = new Instapop.Models.User
    spyOn(@user, 'get', 'name').andReturn('super')

  it 'should have a default name', ->
    expect(@user.get('name')).toEqual('super')

