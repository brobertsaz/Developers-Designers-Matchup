RebelFoundation::Application.routes.draw do
  root :to => "home#index"  
    
  match "/auth/:provider/callback" => "sessions#create" 
end
