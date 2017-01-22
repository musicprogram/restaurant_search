Rails.application.routes.draw do
  resources :dependences
  resources :restaurants
  resources :specialties
  resources :zones
  resources :cities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
