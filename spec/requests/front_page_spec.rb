require 'spec_helper'

describe 'front pag' do
  it 'must contain the #pictures id in the DOM' do
    visit root_url
    page.should have_selector('#pictures')
  end
end
