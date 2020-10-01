Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :crimes
  resources :cities
  resources :users 
  resources :updates
  resources :anon_tips
  
  get 'application/home'
  root to: 'application#home', as: 'home'
  get '/welcome', to: 'users#welcome', as: 'welcome'
  get '/login', to: 'users#login', as: "login"
  post '/login', to: 'users#handle_login'
  delete '/logout', to: 'users#logout'
  post '/updates/:id', to: 'updates#create', as: 'post_update'
  post '/cities', to: "cities#high_crime"
end
