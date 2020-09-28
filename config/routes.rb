Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :crimes
  resources :cities
  resources :users 
  resources :updates

end
