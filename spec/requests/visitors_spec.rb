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

describe "Homepage view available programmers" do 
  before do 
    visit root_path 
  end 
  it "should let visitor view available developers" do
    click_link "Developers Available"
    page.should have_content("Developers Available")
  end
  
  it "should let visitor view available designers" do
    click_link "Designers Available"
    page.should have_content("Designers Available")
  end
end