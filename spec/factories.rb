require 'factory_girl'


Factory.define :user do |u|
  u.username 'New User'
  u.email 'newuser@test.com'
  u.password 'please'
  u.password_confirmation 'please'
end