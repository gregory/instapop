class SessionsController < ApplicationController
  def create
    response = Instagram.get_access_token(params[:code], :redirect_uri => instagram_callback_session_url(:instagram))
    session[:access_token] = response.access_token.presence
    redirect_to root_path
  end
end
