Rails.application.routes.draw do
  get 'static_pages/home'

  resources :lines
  resources :tickets
  resources :users
  root 'lines#index'
end
