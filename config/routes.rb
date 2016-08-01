Rails.application.routes.draw do

  root 'static_pages#home'

  get '/home',      to: 'static_pages#home'
  get '/about',     to: 'static_pages#about'
  get '/contact',   to: 'static_pages#contact'
  get '/register',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  get    '/post',   to: 'static_pages#review'

  resources :users,      except: [:new]
  resources :products
  resources :reviews

end
