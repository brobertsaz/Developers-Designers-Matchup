RebelFoundation::Application.routes.draw do
  root :to => "home#index"
  resources :user
  resources :des_jobs  
  resources :dev_jobs 
    
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout   
end
