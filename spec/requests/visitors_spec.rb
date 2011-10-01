require 'spec_helper'

describe "Homepage view jobs" do 
  before do 
    visit root_path 
  end 
  it "should let visitor view developer jobs" do
    click_link "Developer Jobs"
    page.should have_content("Developer Jobs")
  end
  
  it "should let visitor view designer jobs" do
    click_link "Designer Jobs"
    page.should have_content("Designer Jobs")
  end
end