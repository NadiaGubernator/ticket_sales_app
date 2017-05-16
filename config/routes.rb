Rails.application.routes.draw do
  resources :lines
  resources :tickets
  resources :users
  root 'static_pages#home'
end
