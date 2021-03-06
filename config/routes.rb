Rails.application.routes.draw do
  get 'sessions/new'

  resources :lines
  resources :tickets
  resources :users

  root   'static_pages#home'

  get    '/home',  to: 'static_pages#home'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/lines',  to: 'lines#index'
  get    '/create',  to: 'lines#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
