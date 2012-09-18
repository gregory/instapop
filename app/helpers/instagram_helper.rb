module InstagramHelper
  def instagram_sign_in_link
    Instagram.authorize_url(:redirect_uri => instagram_callback_session_url(:instagram))
  end
end
