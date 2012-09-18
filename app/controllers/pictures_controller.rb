class PicturesController < BaseController
  respond_to :json, :html
  def index
    @pictures = Picture.populars
    respond_with @pictures do |format|
      format.json { render :layout => false, :text => @pictures.to_json}
    end
  end
end
