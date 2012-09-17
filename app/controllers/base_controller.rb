class BaseController < ApplicationController
protected

  def current_token
    session[:access_token]
  end
  helper_method :current_token
end
