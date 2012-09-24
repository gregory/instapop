@context = @describe
describe 'Instapop.Views.Pictures.Picture', ->
  beforeEach ->
    #model = {
    #  on: ->{}
    #}
    #@model = sinon.mock(model)
    #@model.expects("on").once().returns(true);
    @model = new Instapop.Models.Picture
    @view = new Instapop.Views.Pictures.Picture(model: @model)

  it 'must contain div', ->
    expect($('<div id="some-id"></div>')).toBe('div')

  xdescribe 'initialize', ->
    it 'must call flipPicture when model triggered with: updated', ->
      spyOn(@view, 'flipPicture')
      @model.trigger('updated')
      expect(@view.flipPicture).toHaveBeenCalled()
