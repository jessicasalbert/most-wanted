Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cases, only: [:show, :index]
  resources :cities, only: [:show, :index]

end
