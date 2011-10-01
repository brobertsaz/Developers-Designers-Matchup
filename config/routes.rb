RebelFoundation::Application.routes.draw do
  root :to => "home#index"
  resources :user
  resources :des_jobs  
  resources :dev_jobs 
  resources :designers 
  resources :developers 
    
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout   
end
