Rails.application.routes.draw do
  resources :lines
  resources :tickets
  resources :users
  root 'static_pages#home'
  get  '/home',  to: 'static_pages#home'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/profile',  to: 'users#show'
  get  '/lines',  to: 'lines#index'  
end
