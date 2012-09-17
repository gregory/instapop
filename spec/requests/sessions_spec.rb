require 'spec_helper'

describe "Sessions" do
  describe "authentication on instagram" do
    it "display a login link when user not logged_in" do
      Capybara.reset_sessions!
      visit root_url
      page.should have_content('login')
    end

    it 'sign_in the user when he click on the login link', js: true do
      # Capybara.reset_sessions!
      # session = Capybara::Session.new(:chrome)
      # visit root_url
      # page.should have_content('login')
      # session.click_link 'login'
      # page.should have_content('login')
      #debugger
      #session[:access_token].should_not be_nil
    end
  end
end
