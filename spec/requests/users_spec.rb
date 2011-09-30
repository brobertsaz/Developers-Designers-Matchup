require 'spec_helper'

describe 'user login' do
  
  use_vcr_cassette
  
  before do
    mock_login
  end
  
  it 'authenticates with Twitter', :js => true do
    User.count.should == 0
    
    visit root_path
    save_and_open_page
    click_link 'Sign in'
    should_be_on root_path User.first
    
    User.count.should == 1
    
    page.should have_content('Home')
  end
  
end


