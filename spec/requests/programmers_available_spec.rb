require 'spec_helper'

describe "Progammer fields" do
  it "should make a new developer available", :js => true do
    visit new_developer_path
    fill_in "Name",              :with => "Bill Gates"
    fill_in "Description",        :with => "I am a developer"
    fill_in "Services",     :with => "Ruby on Rails"
    fill_in "Website",   :with => "www.biteme.com"
    click_on "Create"
    save_and_open_page
    page.should have_content("Developer Listing was successfully created")   
  end  
  
  it "should make a new designer available", :js => true do
    visit new_designer_path
    fill_in "Name",              :with => "Bill Gates"
    fill_in "Description",        :with => "I am a designer"
    fill_in "Services",     :with => "HTML5"
    fill_in "Website",   :with => "www.mycrappysite.com"
    click_on "Create"
    save_and_open_page
    page.should have_content("Designer Listing was successfully created") 
  end 
    
end