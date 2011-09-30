require 'spec_helper'

describe 'user login' do
  
  use_vcr_cassette
  
  before do
    mock_login
  end
  
  it 'authenticates with Twitter' do
    User.count.should == 0
    
    visit root_path
    
    click_link 'Sign in with Twitter'
    should_be_on user_pages_path User.first
    
    User.count.should == 1
    
    page.should have_content('Home')
  end
  
end


