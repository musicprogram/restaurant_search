Rails.application.routes.draw do
  
  resources :restaurants do 
  	resources :dependences
  end
  resources :specialties
  resources :zones
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'restaurants#index'
end
