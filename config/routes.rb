Rails.application.routes.draw do

  root 'static_pages#home'

  get '/home',      to: 'static_pages#home'
  get '/about',     to: 'static_pages#about'
  get '/register',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'


  resources :users, except: [ :new ]
  resources :products

end
