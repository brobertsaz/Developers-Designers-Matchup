require 'spec_helper'

describe "Users Sign up" do
  it "should not make a new user", :js => true do
    visit new_user_registration_path
    fill_in "Username",        :with => ""
    fill_in "Email",        :with => ""
    fill_in "Password",     :with => ""
    fill_in "Password confirmation", :with => ""
    click_on "Sign Up"
    save_and_open_page
    page.should have_content("Email can't be blank")
    page.should have_content("Password can't be blank")
  end

  it "should make a new user", :js => true do
    visit new_user_registration_path
    fill_in "Username",        :with => "newuser"
    fill_in "Email",        :with => "usernew@user.com"
    fill_in "Password",     :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_on "Sign Up"
    save_and_open_page
    page.should have_content("You have signed up successfully")
    page.should have_content("Home")
  end
end 

describe "Homepage view jobs" do 
  before do 
    visit root_path 
  end 
  it "should let visitor view developer jobs" do
    click_link "Developer Jobs"
    save_and_open_page
    page.should have_content("Developer Jobs")
  end
  
  it "should let visitor view designer jobs" do
    click_link "Designer Jobs"
    save_and_open_page
    page.should have_content("Designer Jobs")
  end
end


