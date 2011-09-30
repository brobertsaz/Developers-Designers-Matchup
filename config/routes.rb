RebelFoundation::Application.routes.draw do
  root :to => "home#index"
  resources :user  
    
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout   
end
