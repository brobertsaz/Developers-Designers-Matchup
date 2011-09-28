require 'spec_helper'

describe "Des Jobs fields" do
  it "should not make a new des job", :js => true do
    visit new_des_job_path
    fill_in "Title",              :with => ""
    fill_in "Description",        :with => ""
    fill_in "Requirements",       :with => ""
    fill_in "Responsibilities",   :with => ""
    click_on "Create"
    save_and_open_page
    page.should have_content("Some errors were found")   
  end  
  
  it "should make a new des job", :js => true do
    visit new_des_job_path
    fill_in "Title",              :with => "New Job"
    fill_in "Description",        :with => "Great job for you"
    fill_in "Requirements",       :with => "Everything"
    fill_in "Responsibilities",   :with => "Everything"
    click_on "Create"
    save_and_open_page
    page.should have_content("job was successfully created") 
  end 
    
end
