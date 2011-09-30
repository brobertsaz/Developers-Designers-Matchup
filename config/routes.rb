RebelFoundation::Application.routes.draw do
  root :to => "home#index"
  resources :user  
    
  match "/auth/:provider/callback" => "sessions#create" 
end
