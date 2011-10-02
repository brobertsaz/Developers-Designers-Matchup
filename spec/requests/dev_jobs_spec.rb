require 'spec_helper'

describe "Dev Jobs fields" do
  # it "should not make a new dev job", :js => true do
    # visit new_dev_job_path
    # fill_in "Title",              :with => ""
    # fill_in "Description",        :with => ""
    # fill_in "Qualifications",     :with => ""
    # fill_in "Preferred skills",   :with => ""
    # click_on "Create"
    # page.should have_content("Some errors were found")   
  # end  
  
  it "should make a new dev job", :js => true do
    visit new_dev_job_path
    fill_in "Title",              :with => "New Job"
    fill_in "Description",        :with => "Great job for you"
    fill_in "Qualifications",     :with => "Everything"
    fill_in "Preferred skills",   :with => "Everything"
    click_on "Create"
    page.should have_content("job was successfully created") 
  end 
    
end