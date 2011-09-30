require 'spec_helper'

describe "Visitor registers with omniauth" do
  it "should make a new user", :js => true do
    visit root_path
    click_on "Sign in with Twitter"
    soap
    page.should have_content("Authorize")
    click_button "Sign In"
    page.should have_content("Home")
  end
end 



