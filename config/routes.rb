Rails.application.routes.draw do

  get 'sessions/new'

  root 'static_pages#home'

  get '/home',      to: 'static_pages#home'
  get '/about',     to: 'static_pages#about'
  get '/register',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

  resources :users, except: [ :new ]

end
